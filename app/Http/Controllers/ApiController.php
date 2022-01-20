<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\AdminClientCreate;


use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;


class ApiController extends Controller
{

    public function test(Request $request)
    {
        // $response = http::get('https://api.towerdata.com/v5/td?email=lightingmilo@startmail.com&first=Abel&last=Miloslav&api_key=87555f1daf3c8772ae048136577fda8a');

        //https://api.towerdata.com/v5/td?email=sample@towerdata.com&first=caitlin&last=plackard&api_key=87555f1daf3c8772ae048136577fda8a

        // echo $response->body(); 
        $client = new Client();
        $res = $client->get('https://api.towerdata.com/v5/ev?email=oaksdentaldesigns@gmail.com&api_key=c19c1c06de9776468cc0c65f47db0783');
        $response =  $res->getBody();
        print_r($response);

    }
    public function adminApiSearch(Request $request)
    {
        $query = $request->get('query');
        $data = DB::table('admin_clients_info')
            ->where('full_name', 'LIKE', "%{$query}%")
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:relative">';
        foreach($data as $row)
        {
            $output .= '
                <li data-id='.$row->id.'><a href="#">'.$row->full_name.'</a></li>
            ';
        }
        $output .= '</ul>';
        echo $output;
    }

    public function adminApiDependentDel(Request $request)
    {
        $id = $request->id;
        $dependent_id = $request->dependent;
        
        $flight = AdminClientCreate::find($id);
        $dependent_ids = $flight->dependents_ids;
        $key = str_replace($dependent_id,"",$dependent_ids);
        $flight->dependents_ids = $key;
        $flight->save();
    }

    public function userApiSearch(Request $request)
    {
        $query = $request->get('query');
        $data = DB::table('admin_clients_info')
            ->where('full_name', 'LIKE', "%{$query}%")
            ->where('user_id', $request->user()->id)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:relative">';
        foreach($data as $row)
        {
            $output .= '
                <li data-id='.$row->id.'><a href="#">'.$row->full_name.'</a></li>
            ';
        }
        $output .= '</ul>';
        echo $output;
    }
      
}

