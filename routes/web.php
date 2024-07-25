<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\CartController;

Route::get('/', function () {
    return view('index');
})->name('index');

Route::match(['get', 'post'], 'item/{genre?}', [ItemController::class, 'index'])->name('item.index');

Route::get('item/show/{item}', [ItemController::class, 'show'])->name('item.show');
Route::get('cart', [CartController::class, 'index'])->name('cart.index');

//Route::post('item',[ItemController::class,'index'])->name('item.index_post');
Route::post('cart/store', [CartController::class, 'store'])->name('cart.store');
