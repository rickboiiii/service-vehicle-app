<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\ServiceSheetController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::controller(ServiceSheetController::class)->prefix('/service_sheets')->name('service-sheets.')->group(function () {
    Route::get('/', 'index')->name('index');
    Route::get('/{id}', 'fetch')->name('fetch');
});

Route::get('/vehicles', function () {

});
