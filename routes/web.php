<?php

use Illuminate\Support\Facades\Route;

Route::prefix('/cart')->group(function () {
	Route::get('/', 'CartController@index');
	Route::post('/', 'CartController@store');
	Route::put('/', 'CartController@update');
	Route::delete('/', 'CartController@delete');

	Route::get('/train', 'CartController@createRecomendationRule');
});
