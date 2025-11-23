<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

//Route::view('/', 'home')->name('home');
// Route::get('/', function () {
//     $categories = DB::table('categories')->get();
//     return view('home', ['categories' => $categories]);
// })->name('home');
Route::get('/', [\App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::view('article', 'article')->name('article');
Route::view('contact', 'contact')->name('contact');
Route::view('about', 'about')->name('about');
Route::get('posts/{post}', [PostController::class, 'show'])
    ->name('post.show');
