<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeApiController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


/*-----For API Controller Routes-----*/

Route::get('view-api',[EmployeeApiController::class,'view']);
Route::get('create-data',[EmployeeApiController::class,'create_data']);


/*-----For API Controller Routes-----*/