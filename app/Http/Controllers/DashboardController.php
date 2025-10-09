<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class DashboardController extends Controller
{
    public function index(){
        return 'Welcome'.' '.Session::get('name');
    }

    public function logout(){
        Session::flush();
        return redirect('/');
    }
}
