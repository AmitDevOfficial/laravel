<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;

class EmployeeApiController extends Controller
{
    public function view(){

        $data = Employee::all();
        return response()->json($data);
    }


    public function create_data(Request $request){
        $empolyee = new Employee;
        $empolyee->emp_id = mt_rand(1111,9999);
        $empolyee->fullName =$request['fullName'];
        // $empolyee->email =$request['email'];
        // $empolyee->address =$request['address'];
        // $empolyee->doj =$request['doj'];
        // $empolyee->gender =$request['gender'];
        // $empolyee->status = 1;
        // $empolyee->image = $filename;
        $empolyee->save();
    }
}
