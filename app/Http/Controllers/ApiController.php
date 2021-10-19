<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\AdminClientCreate;

class ApiController extends Controller
{
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

