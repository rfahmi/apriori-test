<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Users
Route::group(['middleware' => ['api']], function(){

    //AUTHENTICATION
    Route::prefix('/auth')->group( function() {
        Route::post('/login', 'Api\AuthController@login');
        Route::post('/register', 'Api\AuthController@register');
    });

    //USER
    Route::group(['middleware' => ['auth:api']], function(){
        Route::get('/user', 'Api\UserController@index');
        Route::get('/user/{id}', 'Api\UserController@show');
        Route::put('/user/{id}/update', 'Api\UserController@update');
        Route::delete('/user/{id}/delete', 'Api\UserController@destroy');
    });
});
