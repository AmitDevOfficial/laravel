<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Worker extends Model
{
    protected $table = "worker";
    protected $primaryKey = "id";

    public function getSalary() {
        return $this->hasOne(Salary::class,'work_id','work_id');
    }
    
    public function getTech() {
        return $this->hasMany(Technology::class,'work_id','work_id');
    }
}
