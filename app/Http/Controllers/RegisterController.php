<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;

class RegisterController extends Controller
{
    public function index() {
        return view('register');
    }
    public function register(Request $request) {        
        print_r($request->all());

        // $request->validate([
        //     'fullName' => 'required',
        //     'email' => 'required|email',
        //     'emppass' => 'required',
        //     'mobile' => 'required|min:10|max:12',
        // ]);
        
        $request->validate([
            'fullName' => 'required',
            'email' => 'required|email',
            'address' => 'required',
            'doj' => 'required',
            'gender' => 'required',
        ]); 

        $empolyee = new Employee;
        $empolyee->emp_id = mt_rand(1111,9999);
        $empolyee->fullName =$request['fullName'];
        $empolyee->email =$request['email'];
        $empolyee->address =$request['address'];
        $empolyee->doj =$request['doj'];
        $empolyee->gender =$request['gender'];
        $empolyee->status = 1;

        // To save data in our database with the help of this function and this is also know us ORM Function
        $empolyee->save();

        return redirect('view');
        
    }
    public function view_employee(){

        $employee = Employee::all();
        $data = compact('employee'); //its a laravel function to show multiple table data

        // For Debug and check the data 
        // echo '<pre>';
        // print_r($employee->toArray());
        // die;
        return view('view-data')->with($data);
    }

    public function edit_employee($empId) {
        $employee = Employee::find($empId);

        if(!is_null($employee)){
            $data = compact('employee');    
            return view('register')->with($data);
        }else{
            return redirect('view');
        }
    }
}
