<?php

use App\Http\Controllers\AddCartController;
use App\Http\Controllers\LaporanPelayanController;
use App\Http\Controllers\MakananController;
use App\Http\Controllers\Product1Controller;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LchefController;
use App\Http\Controllers\LkasirController;
use App\Http\Controllers\LpelayanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/products', [ProductController::class, 'index']);
Route::get('/products/create', [ProductController::class, 'create']);
Route::post('/products', [ProductController::class, 'store']);
Route::get('/products/{id}/edit', [ProductController::class, 'edit']);
Route::put('/products/{id}', [ProductController::class, 'update']);
Route::delete('/products/{id}', [ProductController::class, 'destroy']);

Route::get('/makanans', [MakananController::class, 'index']);
Route::get('/makanans/create', [MakananController::class, 'create']);
Route::post('/makanans', [MakananController::class, 'store']);
Route::get('/makanans/{id}/edit', [MakananController::class, 'edit']);
Route::put('/makanans/{id}', [MakananController::class, 'update']);
Route::delete('/makanans/{id}', [MakananController::class, 'destroy']);

Route::get('/lpelayans', [LpelayanController::class, 'index']);
Route::get('/lpelayans/create', [LpelayanController::class, 'create']);
Route::post('/lpelayans', [LpelayanController::class, 'store']);
Route::get('/lpelayans/{id}/edit', [LpelayanController::class, 'edit']);
Route::put('/lpelayans/{id}', [LpelayanController::class, 'update']);
Route::delete('/lpelayans/{id}', [LpelayanController::class, 'destroy']);

Route::get('/lkasirs', [LkasirController::class, 'index']);
Route::get('/lkasirs/create', [LkasirController::class, 'create']);
Route::post('/lkasirs', [LkasirController::class, 'store']);
Route::get('/lkasirs/{id}/edit', [LkasirController::class, 'edit']);
Route::put('/lkasirs/{id}', [LkasirController::class, 'update']);
Route::delete('/lkasirs/{id}', [LkasirController::class, 'destroy']);

Route::get('/lchefs', [LchefController::class, 'index']);
Route::get('/lchefs/create', [LchefController::class, 'create']);
Route::post('/lchefs', [LchefController::class, 'store']);
Route::get('/lchefs/{id}/edit', [LchefController::class, 'edit']);
Route::put('/lchefs/{id}', [LchefController::class, 'update']);
Route::delete('/lchefs/{id}', [LchefController::class, 'destroy']);

Route::get('/laporanpelayans', [LaporanPelayanController::class, 'index']);
Route::get('/laporanpelayans/create', [LaporanPelayanController::class, 'create']);
Route::post('/laporanpelayans', [LaporanPelayanController::class, 'store']);
Route::get('/laporanpelayans/{id}/edit', [LaporanPelayanController::class, 'edit']);
Route::put('/laporanpelayans/{id}', [LaporanPelayanController::class, 'update']);
Route::delete('/laporanpelayans/{id}', [LaporanPelayanController::class, 'destroy']);


// Route::get('/', [AuthController::class, 'show']);
Route::post('/getlogin', [AuthController::class, 'getlogin']);
Route::get('/dashboard', [DashboardController::class, '_invoke']);

Route::get('/', [ProductController::class, 'productList'])->name('products.list');
Route::get('cart', [AddCartController::class, 'cartList'])->name('cart.list');
Route::post('cart', [AddCartController::class, 'addToCart'])->name('cart.store');
Route::post('update-cart', [AddCartController::class, 'updateCart'])->name('cart.update');
Route::post('remove', [AddCartController::class, 'removeCart'])->name('cart.remove');
Route::post('clear', [AddCartController::class, 'clearAllCart'])->name('cart.clear');
