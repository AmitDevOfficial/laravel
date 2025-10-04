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
        // p($request->all());

        // $request->validate([
        //     'fullName' => 'required',
        //     'email' => 'required|email',
        //     'emppass' => 'required',
        //     'mobile' => 'required|min:10|max:12',
        // ]);


        // To check file and debug
        // echo '<pre>';
        // print_r( $request->file('file'));
        
        // die;

        $filename = $request->file('file')->getClientOriginalName();

        $request->file('file')->storeAs('uploads', $filename);

        

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
        $empolyee->image = $filename;

        // To save data in our database with the help of this function and this is also know us ORM Function
        $empolyee->save();

        return redirect('view');
        
    }
    public function view_employee(Request $request){
        $search = $request->search;

        if(!empty($search)){
            $employee = Employee::where('fullName','like',"%$search%")->orWhere('email','like',"%$search%")->paginate(5)->withQueryString();
        }else{
            $employee = Employee::paginate(5);
        }

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

    public function update_employee($empId,Request $request){

        $employee = Employee::find($empId);

        $employee->fullName =$request['fullName'];
        $employee->email =$request['email'];
        $employee->address =$request['address'];
        $employee->doj =$request['doj'];
        $employee->gender =$request['gender'];
        $employee->save();
        
        return redirect('view');
    }

    public function delete_employee($empId){

        $employee = Employee::find($empId)->delete();
            return redirect()->back();
        
        // if(!is_null(@$employee)){
        //     $employee->delete();
        //     return redirect()->back();
        // }else{
        //     return redirect()->back();
        // }
    }
}
