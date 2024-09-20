<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orderdetail extends Model
{
    use HasFactory;

    public $timestamps = false; // saveメソッドでデータを保存する際、created_atとupdated_atを自動的に更新しないようにする
}