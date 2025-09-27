<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\MyController;
use App\Http\Controllers\InvokeController;
use App\Http\Controllers\RegisterController;

use App\Models\Employee;

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('home', function() {         //we are write like these---
//     return view('home');
// });

// Route::get('youtube', function() {     //we are also write this and these can be change the url---
//     return view('home');
// });

/*
Route::view('','home');                    //Shortest way to define routes
Route::view('about','about');
*/

/*----Value print using with URL----*/
// Route::get("/{value?}", function($value=null) {
//     return view("welcome") -> with (['value' => $value]);
// });


/*-----For Controller Routes-----*/
Route::get('/home', [DemoController::class, 'index']);


/*---Grouped Controller---*/
Route::controller(HomeController::class)->group(function(){
    Route::get('/home', [MyController::class, 'newCon']);
    Route::get('/show', [MyController::class, 'show']);
    Route::get('/edit', [MyController::class, 'edit']);
});

/*---directely Invoke Controller---*/
Route::get('invoke',InvokeController::class);

Route::get('/test', function() {
    $emp = Employee::all()->toArray();
    echo '<pre>';
    print_r($emp);
});

Route::get('/form',[RegisterController::class, 'index']);
Route::post('/register',[RegisterController::class, 'register']);
Route::get('/view',[RegisterController::class, 'view_employee']);
Route::get('/edit/{empId}',[RegisterController::class, 'edit_employee']);

/*-----For Controller Routes-----*/
/*
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
*/