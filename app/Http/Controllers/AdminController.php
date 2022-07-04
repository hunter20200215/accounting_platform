<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\AdminCategory;
use App\Models\AdminIncome;
use App\Models\AdminDeduction;
use App\Models\AdminHighlights;
use App\Models\AdminClientCreate;
use App\Models\User;
use App\Models\Campaigns;
use App\Models\AdminCampaign;
use App\Models\LogDetails;
use App\Models\AdminIncomeDetail;
use App\Models\AdminDeductionDetail;
use App\Models\ClientProduct;
use App\Models\Carriers;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use Session;
use App\Models\Insert_file;
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    public function adminUploadCsv(Request $request)
    {
        $file = $request->file('upload_csv');
        $filename = time().$file->getClientOriginalName();
        $extension = $file->getClientOriginalExtension();
        $tempPath = $file->getRealPath();
        $fileSize = $file->getSize();
        $mimeType = $file->getMimeType();
        $valid_extension = array("csv");
        $maxFileSize = 2097152;
        if (in_array(strtolower($extension), $valid_extension)) {
            if ($fileSize <= $maxFileSize) {
                $location = 'uploads';
                $filepath = public_path($location . "/" . $filename);
                $file->move($location, $filename);
                $file = fopen($filepath, "r");
                $importData_arr = array();
                $i = 0;
                while (($filedata = fgetcsv($file, 10000, ",")) !== FALSE) {
                    $num = count($filedata);
                    for ($c = 0; $c < $num; $c++) {
                        $importData_arr[$i][] = $filedata[$c];
                    }
                    $i++;
                }
                fclose($file);
                $fields = DB::select("SELECT COLUMN_NAME 
                FROM `INFORMATION_SCHEMA`.`COLUMNS` 
                WHERE `TABLE_SCHEMA`='bookkeeper' 
                    AND `TABLE_NAME`='admin_clients_info'");
                
                foreach ($importData_arr as $key => $importData) {
                    if ($key == 0) {
                        foreach ($fields as $index => $field) {
                            if ($index == 0) continue;
                            ${$field->COLUMN_NAME."_key"} = (array_search($field->COLUMN_NAME,$importData) !== false) ? array_search($field->COLUMN_NAME,$importData) : null;
                        }
                        continue;
                    }
                    $insertData = [];
                    foreach($fields as $index => $field) {
                        if ($index == 0) continue;
                        if(${$field->COLUMN_NAME."_key"} !== null) {
                            if($field->COLUMN_NAME == "dob_date") {
                                $insertData["dob_date"] = date("Y-m-d", strtotime($importData[$dob_date_key]));
                                continue;
                            }
                            $insertData[$field->COLUMN_NAME] = $importData[${$field->COLUMN_NAME."_key"}];
                        }
                    }
                    $insertData["full_name"] =  $importData[$first_name_key] . " " . $importData[$last_name_key];
                    $insertData["user_id"] =  $request->user()->id;
                    $insertData["created_at"] =  date("Y-m-d H:i:s");
                    $insertData["updated_at"] =  date("Y-m-d H:i:s");

                    $alreadyexist = AdminClientCreate::where('full_name', '=', $insertData["full_name"])->first();
                    if ($alreadyexist === null) {
                        Insert_file::insertData($insertData);
                    }                    
                }
                Session::flash('message','Import Successful.');
            }else{
                Session::flash('message','File too large. File must be less than 2MB.');
            }
        }else{
            Session::flash('message','Invalid File Extension.');
        }


        return redirect()->route('admin.clients');
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
                $single_result = $statement->fetch(\PDO::FETCH_ASSOC);
                $table_column_array = array_keys($single_result);
                $table_value_array = array_values($single_result);
                $output .= "\nINSERT INTO $table (";
                $output .= "" . implode(", ", $table_column_array) . ") VALUES (";
                $output .= "'" . implode("','", $table_value_array) . "');\n";
            }
        }
        $file_name = 'database_backup_on_' . date('y-m-d') . '.sql';
        $file_handle = fopen($file_name, 'w+');
        fwrite($file_handle, $output);
        fclose($file_handle);
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . basename($file_name));
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($file_name));
        
        ob_clean();
        flush();
        readfile($file_name);
        unlink($file_name);
    }
    public function adminCreateCampaign(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|unique:App\Models\Campaigns,campaign_name|max:255',
        ]);
        $flight = new Campaigns;
        $flight->campaign_name = $request->name;
        $flight->action = $request->action ?? 0;
        $flight->user_id = $request->user()->id;
        $flight -> save();
        return redirect()->route('admin.marketing');
    }
    public function adminEditCampaign(Request $request)
    {
        $flight = Campaigns::find($request->id);
        $flight->campaign_name = $request->name;
        $flight->action = $request->action ?? 0;
        $flight->user_id = $request->user()->id;
        $flight -> save();
        return redirect()->route('admin.marketing');
    }
    public function adminDeleteCampaign(Request $request)
    {
        $flight = Campaigns::find($request->id);
        $flight -> delete();
        return redirect()->route('admin.marketing');
    }
    public function adminCarriers(Request $request)
    {
        $carriers = DB::table("carriers")
                        ->leftJoin('carrier_logos','carriers.logo_id', '=', 'carrier_logos.id')
                        ->select('carriers.*','carrier_logos.id as carrier_logos_id','carrier_logos.logo_name')
                        ->get();
        $carriers_logos = DB::table("carrier_logos")->get();
        return view('admin.adminCarriers', [
            'carriers' => $carriers,
            'baseimagepath' => '/img/carriers/',
            'carriers_logos' => $carriers_logos,
        ]);
    }
    public function adminCarrierCreate(Request $request)
    {
        
        $this->validate($request, [
            'name' => 'required',
        ]);

        $flight = new Carriers;
        $flight->carrier_name = $request->name;
        $flight->logo_id = $request->logo;


        $flight->save();
        return redirect()->route('admin.carriers.index');
    }
    public function adminCarrierEdit(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);
        $flight = Carriers::find($request->id);
        $flight->carrier_name = $request->name;
        $flight->logo_id = $request->logo;
        $flight->save();
        return redirect()->route('admin.carriers.index');
    }
    public function adminCarrierDelete(Request $request)
    {
        $flight = Carriers::find($request->id);
        $flight->delete();
        return redirect()->route('admin.carriers.index');
    }
}
