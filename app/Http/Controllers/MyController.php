<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    public function newCon(){
        return "Hello New Controller";
    }
    public function show(){
        return "Hello New show";
    }
    public function edit(){
        return "Hello New edit";
    }
}
