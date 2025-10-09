<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\User;

class AuthController extends Controller
{
    public function index(){
        return view('login');
    }

    public function auth(Request $request){

        // print_r($request->all());

        $validate = $request->validate([
            'username'=>'required',
            'password'=>'required'
        ]);

        if($validate){
            $user = $request->only('username','password');
            $user['status'] = 1;
            if(Auth::attempt($user)){
                if(Auth::check()){
                    $userDetails = Auth::user();
                    // echo "<pre>";
                    // print_r($userDetails->toArray());
                    Session::put('name', $userDetails->displayName);
                    Session::put('userID', $userDetails->id);

                    return redirect('/dashboard');
                }
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
    }


    public function register(){
        $pass = "1234";
        // echo Hash::make($pass);
        // die;
        $user = new User;
        $user->displayName = "testing Baby";
        $user->username = "admin";
        $user->email = "testing@gmail.com";
        $user->password = Hash::make($pass);
        $user->status = 1;

        // To save data in our database with the help of this function and this is also know us ORM Function
        $user->save();
    }
}
