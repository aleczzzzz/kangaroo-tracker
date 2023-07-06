<?php

use App\Http\Controllers\KangarooController;
use App\Models\Kangaroo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('kangaroos/check-name', [KangarooController::class, 'checkName']);
Route::apiResource('kangaroos', KangarooController::class);
