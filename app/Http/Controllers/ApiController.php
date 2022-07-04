<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\AdminClientCreate;
use App\Models\ClientProduct;
use App\Models\Campaigns;


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
    public function backup_database()
    {
        $mysqlHostName      = env('DB_HOST');
        $mysqlUserName      = env('DB_USERNAME');
        $mysqlPassword      = env('DB_PASSWORD'); 
        $DbName             = env('DB_DATABASE'); 
        $backup_name        = "backup.sql";
        $tables             = []; //here your tables...
    
        $connect = new \PDO("mysql:host=$mysqlHostName;dbname=$DbName;charset=utf8", "$mysqlUserName", "$mysqlPassword",array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
        $get_all_table_query = "SHOW TABLES";
        $statement = $connect->prepare($get_all_table_query);
        $statement->execute();
        $result = $statement->fetchAll();
        foreach($result as $row)
        {
            array_push($tables, $row[0]);
        }
        
        $output = '';
        foreach($tables as $table)
        {
            $show_table_query = "SHOW CREATE TABLE " . $table . "";
            $statement = $connect->prepare($show_table_query);
            $statement->execute();
            $show_table_result = $statement->fetchAll();
    
            foreach($show_table_result as $show_table_row)
            {
                $output .= "\n\n" . $show_table_row["Create Table"] . ";\n\n";
            }
            $select_query = "SELECT * FROM " . $table . "";
            $statement = $connect->prepare($select_query);
            $statement->execute();
            $total_row = $statement->rowCount();
    
            for($count=0; $count<$total_row; $count++)
            {
                $single_result = $statement->fetch(\PDO::FETCH_ASSOC, );
                $table_column_array = array_keys($single_result);
                $table_value_array = array_values($single_result);
                foreach($table_value_array as &$value){
                    $value = addslashes($value);
                }

                $output .= "\nINSERT INTO $table (";
                $output .= "" . implode(", ", $table_column_array) . ") VALUES (";
                $output .= "'" . implode("','", $table_value_array) . "');\n";
            }
        }
        $file_name = 'database_backup_on_' . date('y-m-d') . '.sql';
        $file_handle = fopen($file_name, 'w+');
        fwrite($file_handle, $output);
        fclose($file_handle);
        // unlink($file_name);
        return response()->download($file_name);
    }
    public function deleteProduct(Request $request)
    {   
       
        $id = $request->get('id');
        $flight = ClientProduct::find($id);
        $flight->delete();
        return response()->json(['name' => 'Abigail', 'status' => '200']);
    }
    public function adminCopyCampaign(Request $request)
    {   
       
        $id = $request->get('data_id');
        $flight = Campaigns::where('id',$id)->first();
        $index_query = Campaigns::where('campaign_name', 'like', $flight->campaign_name." copy-"."%")->orderBy('id','desc')->first();
        if ($index_query) {
            preg_match("[$flight->campaign_name copy-([0-9]+)]",$index_query->campaign_name, $matches);
            }else{
                $matches=null;
            }
        // dd($matches);
        if ($matches) {
            $index = $matches[1] + 1;
        } else {
            $index = 1;
        }
        $flight1 = new Campaigns;
        $flight1->campaign_name = $flight->campaign_name." copy-".$index;
        $flight1->action = $flight->action;
        $flight1->user_id = $request->user()->id;
        $flight1->save();
        return response()->json(['status' => '200']);
    }
      
}

