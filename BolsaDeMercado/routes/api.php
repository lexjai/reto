<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\EmpresaController as EmpresaV1;
use App\Http\Controllers\Api\DatoController as DatosV1;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('empresas/lista', EmpresaV1::class)
      ->only(['index','show', 'destroy'])
      ->middleware('auth:sanctum');

Route::apiResource('empresas/datos', DatosV1::class)
      ->only(['index','show', 'destroy'])
      ->middleware('auth:sanctum');

Route::get('/dato/{id}', [DatosV1::class,'show']); //muestra una cotizacion
Route::put('/dato/{id}', [DatosV1::class,'update']);

Route::get('/empresa/{id}', [EmpresaV1::class,'show']); //muestra una cotizacion


Route::post('login', [LoginController::class, 'login']);
Route::post('register', [AuthController::class, 'register']);
