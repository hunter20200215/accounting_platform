<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use App\Models\AdminClientCreate;
use App\Models\LogDetails;



class CronjobController extends Controller
{
    public function index()
    {   
        $user_id = DB::table('users')->where('name', 'Calendly')->first();
        // $min_start_time = date('Y-m-d',strtotime("-2 days")).'T12:30:00.000000Z';
        $min_start_time = '2022-05-05T03:04:05.092125Z';
        // $max_start_time = date("Y-m-d").'T12:30:00.000000Z';
        $max_start_time = date('Y-m-d',strtotime("-1 days")).'T12:30:00.000000Z';
        $token = 'eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguY2FsZW5kbHkuY29tIiwiaWF0IjoxNjUzOTc4ODI5LCJqdGkiOiJmZjRmZjU1My00NGVkLTQxOTQtOTVmZS03YTQ4YmYwNzczNjUiLCJ1c2VyX3V1aWQiOiJBQUNERVhCSkhOQVZNUVFKIn0.jsBWLg81N0kfdhb1ukgXzu9mZX272JNZUYiI__vrbbc';
        $response = Http::withToken($token)->get('https://api.calendly.com/scheduled_events',[
            'user'=>'https://api.calendly.com/users/AACDEXBJHNAVMQQJ',
            'min_start_time' => $min_start_time,
            'max_start_time' => $max_start_time,
        ]);
        $collects = json_decode($response)->collection;
        if ($collects != null) {
            
            foreach ($collects as $collect) {
            $uri =  explode("/",$collect->uri);
            $uri = end($uri);
            $url = 'https://api.calendly.com/scheduled_events/'.$uri.'/invitees';
            $response1 = Http::withToken($token)->get($url,[
            ]);
            $response1 = json_decode($response1);
            $collection1 = $response1->collection[0];
            $name = $collection1->name;
            $first_name = $collection1->first_name;
            $last_name = $collection1->last_name;
            if($first_name == null) {
                $name_arr = explode(" ", $name);
                $first_name = $name_arr[0];
                $last_name = $name_arr[1];
            }
            $email = $collection1->email;
            $checkval = DB::table('admin_clients_info')->where('full_name', $name)->latest()->first();
            if ($checkval == null) {
                $flight = new AdminClientCreate;
                $flight->first_name = $first_name;
                $flight->last_name = $last_name;
                $flight->email = $email;
                $flight->full_name = $name;
                $flight->user_id = $user_id->id;
                $flight->save();
                $Logs = new LogDetails;
                $Logs->content = "just created" . " by " . 'Calendly Api';
                $Logs->client_id = $flight->id;
                $Logs->user_id =  $user_id->id;
                $Logs->save();
            }

        }
        
        }
        
        


    }
}
