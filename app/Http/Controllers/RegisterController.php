<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index() {
        return view('register');
    }
    public function register(Request $request) {        
        print_r($request->all());

        $request->validate([
            'fullName' => 'required',
            'email' => 'required|email',
            'emppass' => 'required',
            'mobile' => 'required|min:10|max:12',
        ]); 
    }
}
