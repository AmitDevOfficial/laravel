<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $table = 'employee';
    protected $primaryKey = 'id';


    //--Mutator--
    public function setFullNameAttribute($value){
        $this->attributes['fullName'] = ucwords($value);   // This is --mutator-- first we update the value then insert the value in database
    }


    //--Accessor--
    public function getDojAttribute($value){
        return date('d M, Y', strtotime($value));           // we get the value from database then its come to editable format 
    }
}
