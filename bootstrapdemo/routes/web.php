<?php

use Illuminate\Support\Facades\Route;

Route::view('/', 'welcome')->name(name: 'welcome');
Route::view('contact', 'contact')->name('contact');
Route::view('about', 'about')->name('about');
