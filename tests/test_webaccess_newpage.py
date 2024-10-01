#!/usr/bin/env python

# selenium使います
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# テスト用のライブラリ
import unittest


# テスト用のサーバー(Selenium grid)
REMOTE_URL = "http://selenium:4444/wd/hub"

class TestCase(unittest.TestCase):

    # 今の時間のタイムスタンプを生成しておく(テスト時に結果ファイルに付けるため)
    timestamp = None

    def setUp(self):
        # timestampがNoneの場合、現在時刻を取得
        if self.timestamp is None:
            from datetime import datetime
            self.timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
        # カレントディレクトリを取得して表示
        # import os
        # print(os.getcwd())
        # # カレントディレクトリにあるpublicディレクトリのアクセス権を確認する
        # print(os.system("ls -ld public"))

        # selenium gridのサーバーに接続
        self.driver = webdriver.Remote(REMOTE_URL, options=webdriver.ChromeOptions())
        # テスト用のファイルを作成
        with open("public/testcase.html", "w") as f:
            f.write("<html><head><title>This is a pen</title></head><body>Plain HTML</body></html>")
        with open("public/testcase.php", "w") as f:
            f.write("<html><head><title><?php echo 'This is a pen';?></title></head><body><?php echo 'This is a pineapple';?></body></html>")

    def tearDown(self):
        # テストサーバー切断
        self.driver.quit()
        # public/testcase.htmlおよびpublic/testcase.phpを削除
        import os
        [os.remove(f"public/testcase.{ext}") for ext in ["html", "php"]]

    # ホストwebに接続し、タイトルを取得するテスト
    def test_access(self):
        self.driver.get("http://web/testcase.html")
        self.driver.get_screenshot_as_file(f"results/{self.timestamp}-01-testcase-html.png")
        self.assertIn("This is a pen", self.driver.title)

    # ホストwebに接続し、タイトルを取得するテスト(PHP)
    def test_access_php(self):
        self.driver.get("http://web/testcase.php")
        self.driver.get_screenshot_as_file(f"results/{self.timestamp}-02-testcase-php.png")
        self.assertIn("This is a pen", self.driver.title)


if __name__ == "__main__":
    unittest.main()
