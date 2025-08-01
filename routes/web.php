<?php

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('home', function() {         //we are write like these---
//     return view('home');
// });

// Route::get('youtube', function() {     //we are also write this and these can be change the url---
//     return view('home');
// });

Route::view('','home');                    //Shortest way to define routes
Route::view('about','about');



//---Named Routes---
Route::get('home/introduction-about-blade', function(){
    return view("home");
})->name('about');



//---Group Routes---
Route::prefix('home')->group(function(){
    Route::get("introduction", function(){
        return view("home");
    });
    Route::get("about", function(){
        return view("home");
    });
    Route::get("inforamtion", function(){
        return view("home");
    });
});
