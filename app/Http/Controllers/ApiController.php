<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

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
}
