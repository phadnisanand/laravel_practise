<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MyController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\isAdminMiddleware;

Route::get('/', function () {
    return view('welcome');
})->middleware('is_admin:admin,superadmin');


//Route::view('/home', 'home');
// Route::view('/home', 'home', ['name' => 'Anand Phadnis']);


Route::get('/viewindex', [App\Http\Controllers\MyController::class, 'index']);
Route::get('/view_profile', [App\Http\Controllers\MyController::class, 'view_profile']);
Route::get('/home', [App\Http\Controllers\MyController::class, 'home_data']);
Route::get('/homedata', [App\Http\Controllers\MyController::class, 'view_profile'])->name('home');


Route::get(
    '/user/profile',
    [App\Http\Controllers\MyController::class, 'show']
)->name('profile');

// $url = route('user.profile', ['id' => 123]);

    // $url would be something like "http://your-app.com/users/123/profile"

// Route::get('/page/{id}', function ($id) {
//     return view('page', ['page' => $id]);
// });

// // Using Arrow Functions (Since PHP 7.4)
// Route::get('/page/{id}', fn ($id) => view('page', ['page' => $id]));

// Route::get('/hello/{name?}', function ($name = 'Guest') {
//     return view('hello', ['name' => $name]);
// });

// $fname = 'Nutan';
// $lname = 'Dhamarikar';

//  Route::get('/hello/{fname?}/{lname?}', function ($fname = 'Anand', $lname = 'Phadnis') {
//     return view('hello', ['fname' => $fname, 'lname' => $lname]);
// // });

// Route::view('/home', ['name' => 'anand phadnis'])->name('home');

//Route::view('/home', 'home')->name('home123');

// Without parameters
//$url = route('home'); // Generates /home

// // With parameters
// echo route('home');

// For a route without parameters

// Route::prefix('user')->group(function () {
//     Route::get('/post', [UserController::class, 'index']);
//     Route::get('/post/{id}', [UserController::class, 'show']);
// });

// Route::get('/page/{id}', function ($id) {
//     return view('page', ['page' => $id]);
// });

// // Using Arrow Functions (Since PHP 7.4)
// Route::get('/page/{id}', fn ($id) => view('page', ['page' => $id]));

// Route::get('/hello/{name?}', function ($name = 'Guest') {
//     return view('hello', ['name' => $name]);
// });

// Route::get('/page1/{id}', function ($id) {
//     return view('page', ['page' => $id]);
// });


Route::get('/homedata', [App\Http\Controllers\ExampleController::class, 'index']);
Route::get('/homedata/contact', [App\Http\Controllers\ExampleController::class, 'contact']);


Route::get('email-test', function(){
    $details['email'] = 'phadnisanandhyd@gmail.com';
    dispatch(new App\Jobs\SendEmailJob($details));
    dd('done');

});
