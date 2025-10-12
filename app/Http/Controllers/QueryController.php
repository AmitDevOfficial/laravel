<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class QueryController extends Controller
{
    // Selecting Data;
    // get, where, first, latest, value, find, pluck;
    // count, max, min, avg, sum;
    // exits, dosentExits;
    // select, distinct;
    // where(>=); where, like, orwhere, whereAny, whereAll;
    // groupby, orderBy having and so on....;


    /*
    public function index() {

        // return "Hello Query Selector";

        $data = DB::table('employee')->get(); //--All data form database
        $data = DB::table('employee')->where(['fullName'=>'Paro', 'address'=>'Dewas'])->get(); //filter data with (where)
        echo "<pre>";
        print_r($data->toArray());
    }
    */



/*--------------------------------Where-----------------------------------------------------*/
    
    //whereBetween, whereNotBetween, orwhereBetween;
    // whereIn, whereNotIn;
    // whereNull, whereNotNull;
    // whereData, whereMonth, whereDay, whereYear;
    // groupBy, having;
    // limit, offset;

     public function index() {

        // return "Hello Query Selector";

        // whereBetween -- hume jitne data chahiye utne hi milenge or jaha se chahiye waha se milenge, Array me likhenge
        // $data = DB::table('employee')->whereBetween('id',[30,40])->get();

        // whereNotBetween -- hume jitne data nhi chahiye utne nhi milenge or jaha se nhi chahiye waha se nhi milenge, Array me likhenge
        // $data = DB::table('employee')->whereNotBetween('id',[30,40])->get(); 


        // whereIn -- only Selcted Data hi milenge jo humne array ke ander likhe he 
        // $data = DB::table('employee')->whereIn('id',[10,15])->get();
        
        
        // whereNotIn -- only Selcted Data nhi chahiye vo nhi milenge jo humne array ke ander likhe he 
        // $data = DB::table('employee')->whereBetween('id',[5,20])->whereNotIn('id',[10,15])->get(); 


        // whereNull -- Hume sirf wahi data show hoga jiski filed humne di he or uski value null ho 
        // $data = DB::table('employee')->whereNull('address')->get(); 

        // whereNull -- Hume sirf wahi data show hoga jiski filed ki value null nhi he
        // $data = DB::table('employee')->whereNotNull('address')->get(); 


        // whereDate -- Hume sirf wahi data show hoga jiski filed ki value full date hogi --same as month day and year
        // $data = DB::table('employee')->whereDate('created_at','2025-09-26')->get(); 


        // $data = DB::table('employee')->where(['fullName'=>'Paro', 'address'=>'Dewas'])->get(); //filter data with (where)
        // echo "<pre>";
        // print_r($data->toArray());




/*-----------------------------------Joins--------------------------------------------------*/

        // Join -- (Default -- innerjoin)'
        // Left Join -- leftjoin
        // Right Join -- rightjoin

        //join ne humari do table ko connect krdiya (empolyee and users) table ko
        //agr humne dono tables me se koi specfic fields chahiye to (select) ka use krenge or agar koi puri table chhiye to * ka use krte he
        // $data = DB::table('employee')->join('users','employee.emp_id','=','users.emp_id')->join('contact','employee.emp_id','=','contact.emp_id')  
        //             ->select('employee.*','users.displayName','users.username','contact.mobile')
        //             ->get(); 


        // leftjoin = left join left table ke sabhi data aaega and right me se sirf wahi data aauega jo empolyee id se match krega            
        // $data = DB::table('employee')->leftjoin('users','employee.emp_id','=','users.emp_id')->get(); 


        // rightjoin = right join right table ke sabhi data aaega and left me se sirf wahi data aauega jo empolyee id se match krega            
        $data = DB::table('employee')->rightjoin('users','employee.emp_id','=','users.emp_id')->get(); 






/*-----------------------------------Insert--------------------------------------------------*/
        //insert, insertOrIgnore, insertGetId

        // $data = DB::table('contact')->insert([
        //     ['emp_id'=>mt_rand(11111,99999),'mobile'=>123456789],
        //     ['emp_id'=>mt_rand(11111,99999),'mobile'=>223356789]
        // ]);


        //insertOrIgnore - agar hum kisi bhi exits row me value reupdate krne chahe to nhi krpate to error show hota he but usi error se bachne ke liye insertOrIgnore ka user kiya jata he
        $data = DB::table('contact')->insertOrIgnore(['id'=>3, 'mobile'=>452639871]);   

        //insertGetId -  its same process to insert data and it will return to get last inserted id

        // echo "<pre>";
        // print_r($data->toArray());
    }
}
