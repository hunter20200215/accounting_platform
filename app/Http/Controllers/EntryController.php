<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Models\AdminClientCreate;

class EntryController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('dataEntryHome');
    }
    public function entryClients()
    {   


        $selected_categorys = DB::table('admin_category')->pluck('name');
        $clients = DB::table('admin_clients_info')
                    ->where('user_id', Auth::id())
                    ->paginate(100);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                    ->where('id' ,'=',$client->user_id)
                    ->pluck('name');

            
            array_push($rolls,$roll[0]);
        }
        return view('entryClients',[
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' => [],
            'rolls'=>$rolls,
            'counters' => DB::table('admin_clients_info')->where('user_id', Auth::id())->count(),

        ]);
        
        
    }

    public function entryClientsCreate()
    {
        
        return view('entryClientsCreate',[
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get()
            
        ]);
    }
    public function entryClientsCreateNew(Request $request)
    {   
        $flight = new AdminClientCreate;
        
        $flight->first_name = $request->first_name;
        $flight->last_name = $request->last_name;
        $flight->middle_name = $request->middle_name;
        $flight->dob_date = $request->DOB;
        $flight->category = $request->categorys;
        $flight->primary_phone = $request->primary_phone;
        $flight->other_phone = $request->other_phone;
        $flight->address = $request->address;
        $flight->citizenship = $request->citizenship;
        $flight->user_id = $request->user()->id;
        $flight->bs_code = $request->bs_code;
        $flight->spouse_id = $request->spouse_id;
        $flight->dependents = $request->dependents;
        $flight->full_name = $request->first_name." ".$request->last_name;
        $flight->resident = $request->residence_radio;
        $flight->home_own_status = $request->house_own_status;
        $flight->home_tax_fee = $request->tax_fee;
        $flight->rent_fee = $request->rent_fee;
        
        $highlight ="";
        $highlight2 ="";
        $dependents_ids ="";
        
        if ($request->income) {
            
            foreach ( $request->income as $index=>$highlight1) {
                if ($index==0){
                    $highlight = $highlight1;
                }else{
                    $highlight .= ",".$highlight1;
                }
            }
            $highlight = $highlight.",";
            $flight->income_highlights = $highlight;
        }
        if ($request->deductions) {
            foreach ( $request->deductions as $index=>$highlight) {
                if ($index==0){
                    $highlight2 = $highlight;
                }else{
                    $highlight2 .= ",".$highlight;
                }
            }
            $highlight2 = $highlight2.",";
            $flight->deduction_highlights = $highlight2;
        }
        
        if ($request->file('file')) {
            $image = $request->file("file");
            $destinationPath = 'admin/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $flight->attached_doc = "$profileImage";
            
        }
        if ($request->dependents == "Yes"){
            foreach ($request->profile_numbers as $index=>$ids) {
                if ($ids != null) {
                    if($index == 0){
                        $dependents_ids = $ids;
                    }else{
                        $dependents_ids .= ",".$ids;
                    }
                }

            }
        }
        $flight->dependents_ids = $dependents_ids;
        $flight->save();

        return redirect()->route('entry.clients');
    }

    public function entryClientsProfile($id)
    {
        
        
        return view('entryClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $id)->first()
        ]);
    }
    public function entryClientsInformation(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);

        $flight->first_name = $request->first_name;
        $flight->last_name = $request->last_name;
        $flight->dob_date = $request->dob_date;

        $flight->save();
        return view('entryClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $request->id)->first()
        ]);
    }
    public function entryClientsBio(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);

        $flight->client_bio = $request->bio;
        

        $flight->save();
        return view('entryClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id',$request->id)->first()
        ]);
    }
    public function entryClientsAddInformation(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);

        $flight->address = $request->address;
        $flight->primary_phone = $request->phone;
        $flight->other_phone = $request->other_phone;
        $flight->sin = $request->sin;
        $flight->citizenship = $request->citizenship;
        $flight->marital_status = $request->marital_status;
        $flight->dependents = $request->dependents;
        $flight->home_status = $request->home_status;
        $flight->notes = $request->notes;

        $flight->save();
        return view('entryClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $request->id)->first()
        ]);
    }

    public function entryClientsFilter1(Request $request)
    {   
        
        $categorys=[];
        $income = [];
        $deduction =[];
        if ($request->categorys) {
            foreach ( $request->categorys as $index=>$value) {
                $categorys[] = $value;
            }
        }
        if ($request->income) {
            foreach ( $request->income as $index=>$value) {
                $income[] = $value;
            }
        }
        if ($request->deduction) {
            foreach ( $request->deduction as $index=>$value) {
                $deduction[] = $value;
            }
        }
        $clients = DB::table('admin_clients_info')
                    ->whereIn('category', $categorys)
                    ->where('user_id', $request->user()->id)
                    ->orWhere(function($query) use ($income) {
                        foreach ($income as $value) {
                            $query->orWhere('income_highlights', 'LIKE', "%$value%");
                                    
                        }
                    })
                    ->where('user_id', $request->user()->id)
                    ->orWhere(function($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->orWhere('deduction_highlights', 'LIKE', "%$value%");
                        }
                    })
                    ->where('user_id', $request->user()->id)
                    ->orWhere(function($query) use ($request) {
                        if ($request->start_date){
                            $query->orWhere('dob_date', ">=",$request->start_date);
                        }
                    })
                    ->where('user_id', $request->user()->id)
                    ->where(function($query) use ($request) {
                        if ($request->end_date){
                            $query->orWhere('dob_date', "<",$request->end_date);
                                    
                        }
                              
                    })
                    
                    ->where('user_id', $request->user()->id)
                    ->paginate(100);

        
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,

        ]);
        // return redirect()->route('admin.clients',['clients' =>$clients]);
    }
    
}
