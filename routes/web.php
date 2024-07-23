<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemController;

Route::get('/', function () {
    return view('index');
})->name('index');

Route::match(['get', 'post'], 'item/{genre?}',[ItemController::class,'index'])->name('item.index');

Route::get('item/show/{item}',[ItemController::class,'show'])->name('item.show');

//Route::post('item',[ItemController::class,'index'])->name('item.index_post');
Route::post('cart/create',[CartController::class,'create'])->name('cart.create');
