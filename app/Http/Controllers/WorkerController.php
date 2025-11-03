<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Worker;
use App\Models\Technology;
use Illuminate\Http\Request;

class WorkerController extends Controller
{
    function worker() {

        // ------------------------------Eloquent ORM Query-----------------------------
        //Search for all data from database
        return Worker::with('getSalary')->get();

        //Serach Single data form Single database table with find only id
        // return Worker::with('getSalary')->find(5);
        
        //Serach data form Multiple database with where and withWhereHas with work_id (with two serach method for worker table and salary table)
        // return Worker::where('work_id',25)->withWhereHas('getSalary', function($query){
        //     $query->where('salary',30000);
        // })->get();
        
        //Serach data form database with where with work_id (with One serach method for salary table)
        // return Worker::where('getSalary', function($query){
        //     $query->where('salary',30000);
        // })->get();



        //For technology tables Eloquent ORM
        // return Worker::has('getTech')->with('getTech','getSalary')->get();

        // return Worker::doesntHave('getTech')->get();
    }
}