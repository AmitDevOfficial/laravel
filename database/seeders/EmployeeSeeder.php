<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Employee;
use Faker\Factory as Faker;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for($i=0;$i<100;$i++){
            $empolyee = new Employee;
            $empolyee->emp_id = mt_rand(1111,9999);
            $empolyee->fullName = $faker->name;
            $empolyee->email = $faker->email;
            $empolyee->address = $faker->address;
            $empolyee->doj = $faker->date;
            $empolyee->gender ='M';
            $empolyee->status = 1;
            $empolyee->save();
        }    
    }
}
