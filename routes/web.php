<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;

Route::get('/', function () {
    return view('index');
})->name('index');

Route::match(['get', 'post'], 'item/{genre?}', [ItemController::class, 'index'])->name('item.index');

Route::get('item/show/{item}', [ItemController::class, 'show'])->name('item.show');
Route::get('cart', [CartController::class, 'index'])->name('cart.index');
Route::get('order', [OrderController::class, 'index'])->name('order.index');

//Route::post('item',[ItemController::class,'index'])->name('item.index_post');
Route::post('cart/store', [CartController::class, 'store'])->name('cart.store');

Route::put('cart/update/{cart}',[CartController::class, 'update'])->name('cart.update');

Route::delete('cart/destroy/{cart}',[CartController::class, 'destroy'])->name('cart.destroy');

