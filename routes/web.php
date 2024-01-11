<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Controller;
use \App\Http\Controllers\ServiceSheetController;
use \App\Http\Controllers\VehicleController;

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

Route::controller(Controller::class)->group(function () {
    Route::get('/', 'landingPage')->name('landing-page');
    Route::get('/reports', 'reportsPage')->name('reports-page');
    Route::get('/services', 'servicesPage')->name('services-page');
});

Route::controller(ServiceSheetController::class)->prefix('/service_sheets')->name('service-sheets.')->group(function () {
    Route::get('/', 'index')->name('index');
    Route::get('/{id}', 'fetch')->name('fetch');
});

Route::controller(VehicleController::class)->prefix('/vehicles')->name('vehicles.')->group(function () {
    Route::get('/fetch-data', 'fetchData')->name('fetch-data');

    Route::get('/', 'index')->name('index');
    Route::post('/', 'save')->name('save');
    Route::get('/{id}', 'fetch')->name('fetch');
    Route::put('/{id}', 'update')->name('update');
    Route::delete('/{id}', 'delete')->name('delete');
});
