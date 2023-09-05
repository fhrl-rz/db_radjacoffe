<?php

use App\Http\Controllers\AddCartController;
use App\Http\Controllers\ProductApi1Controller;
use App\Http\Controllers\ProductApiController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\LaporanPelayanApiController;
use App\Http\Controllers\LchefApiController;
use App\Http\Controllers\LkasirApiController;
use App\Http\Controllers\LpelayanApiController;
use App\Http\Controllers\MakananApiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::get('/products', [ProductApiController::class,'index']);
Route::get('/products/create', [ProductApiController::class,'create']);
Route::post('/products', [ProductApiController::class,'store']);
Route::get('/products/{id}',[ProductApiController::class,'show']);
Route::put('/products/{id}',[ProductApiController::class,'update']);
Route::delete('/products/{id}',[ProductApiController::class,'destroy']);

Route::get('/makanans', [MakananApiController::class,'index']);
Route::get('/makanans/create', [MakananApiController::class,'create']);
Route::post('/makanans', [MakananApiController::class,'store']);
Route::get('/makanans/{id}',[MakananApiController::class,'show']);
Route::put('/makanans/{id}',[MakananApiController::class,'update']);
Route::delete('/makanans/{id}',[MakananApiController::class,'destroy']);

Route::get('/lpelayans', [LpelayanApiController::class,'index']);
Route::get('/lpelayans/create', [LpelayanApiController::class,'create']);
Route::post('/lpelayans', [LpelayanApiController::class,'store']);
Route::get('/lpelayans/{id}',[LpelayanApiController::class,'show']);
Route::put('/lpelayans/{id}',[LpelayanApiController::class,'update']);
Route::delete('/lpelayans/{id}',[LpelayanApiController::class,'destroy']);

Route::get('/lkasirs', [LkasirApiController::class,'index']);
Route::get('/lkasirs/create', [LkasirApiController::class,'create']);
Route::post('/lkasirs', [LkasirApiController::class,'store']);
Route::get('/lkasirs/{id}',[LkasirApiController::class,'show']);
Route::put('/lkasirs/{id}',[LkasirApiController::class,'update']);
Route::delete('/lkasirs/{id}',[LkasirApiController::class,'destroy']);

Route::get('/lchefs', [LchefApiController::class,'index']);
Route::get('/lchefs/create', [LchefApiController::class,'create']);
Route::post('/lchefs', [LchefApiController::class,'store']);
Route::get('/lchefs/{id}',[LchefApiController::class,'show']);
Route::put('/lchefs/{id}',[LchefApiController::class,'update']);
Route::delete('/lchefs/{id}',[LchefApiController::class,'destroy']);


Route::get('/laporanpelayans', [LaporanPelayanApiController::class,'index']);
Route::get('/laporanpelayans/create', [LaporanPelayanApiController::class,'create']);
Route::post('/laporanpelayans', [LaporanPelayanApiController::class,'store']);
Route::get('/laporanpelayans/{id}',[LaporanPelayanApiController::class,'show']);
Route::put('/laporanpelayans/{id}',[LaporanPelayanApiController::class,'update']);
Route::delete('/laporanpelayans/{id}',[LaporanPelayanApiController::class,'destroy']);



Route::post('/auth/register', [AuthController::class, 'register']);
Route::post('/auth/login', [AuthController::class, 'login']);
Route::get('/auth', [AuthController::class, 'auth']);


Route::post('/addcart/{id}', [AddCartController::class, 'addcart']);

Route::get('/', [ProductController::class, 'productList'])->name('products.list');
Route::get('cart', [AddCartController::class, 'cartList'])->name('cart.list');
Route::post('cart', [AddCartController::class, 'addToCart'])->name('cart.store');
Route::post('update-cart', [AddCartController::class, 'updateCart'])->name('cart.update');
Route::post('remove', [AddCartController::class, 'removeCart'])->name('cart.remove');
Route::post('clear', [AddCartController::class, 'clearAllCart'])->name('cart.clear');





Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
