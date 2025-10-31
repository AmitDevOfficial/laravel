<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\MyController;
use App\Http\Controllers\InvokeController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\QueryController;

use App\Models\Employee;
use Illuminate\Http\Request;

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

// ------------------------------------------------------------------

Route::get('/component-form', function(){
    return view('comp-form');
});

Route::get('/form',[RegisterController::class, 'index']);
Route::post('/register',[RegisterController::class, 'register']);
Route::get('/view',[RegisterController::class, 'view_employee']);/*->middleware('check');*/
Route::get('/edit/{empId}',[RegisterController::class, 'edit_employee']);
Route::post('/update/{empId}',[RegisterController::class, 'update_employee']);
Route::get('/delete/{empId}',[RegisterController::class, 'delete_employee']);


// Sessions --

Route::get('put-session', function( Request $request){
    // $request->session()->put('fullname', 'MyAmit Vishwakarma');
    // $request->session()->put('title', 'Web - Developer');
    $request->session()->flash('msg', 'Success');
    session(['channel' => 'AmitSyko', 'profession' => 'blogging']);
});

Route::get('get-session', function( Request $request){
    // echo $request->session()->get('fullname'), '<br>';
    // echo $request->session()->get('title');
    echo "<pre>";
    print_r(session()->all());
});

Route::get('delete-session', function( Request $request){
    // $request->session()->forget('channel');
    $request->session()->forget(['channel', 'profession']);
    // $request->session()->flush('channel'); // flush delete all the datas
});

// ------------------------------------------------------------------


Route::get('/',[AuthController::class,'index'])->middleware('guest');
Route::get('register',[AuthController::class,'register']);
Route::post('login',[AuthController::class,'auth'])->middleware('guest');;
Route::get('dashboard',[DashboardController::class,'index'])->middleware('userAuth');
Route::get('logout',[DashboardController::class,'logout']);

/*-----For Controller Routes-----*/



/*-----For Query Controller Routes-----*/

Route::get('query',[QueryController::class,'index']);

/*-----For Query Controller Routes-----*/





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