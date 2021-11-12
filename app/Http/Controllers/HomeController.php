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
use App\Models\Log;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
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
        return view('home');
    }
    public function dataEntryIndex()
    {
        return view('dataEntryHome');
    }

    public function bookkeeperIndex()
    {
        return view('bookkeeperHome');
    }
    public function adminUsers()
    {
        return view('adminUsers',[
            'users' => DB::table('users')
                        ->whereIn('roll', [1,2])
                        ->paginate(10),
        ]);
    }
    
    public function adminUsersEdit(Request $request)
    {   

        $flight = User::find($request->id);
        $flight->name = $request->name;
        $flight->email = $request->email;
        $flight->password = Hash::make($request->password);
        $flight->roll = $request->roll;
        $flight->save();
        return view('adminUsers',[
            'users' => DB::table('users')
                        ->whereIn('roll', [1,2])
                        ->paginate(10),
        ]);
    }
    public function adminUsersDelete(Request $request)
    {  
        $flight = User::find($request->id);
        $flight->delete();
        return view('adminUsers',[
            'users' => DB::table('users')
                        ->whereIn('roll', [1,2])
                        ->paginate(10),
        ]);
    }

    public function adminUsersCreate(Request $request)
    {  
        $flight = new User;
        $flight->name = $request->name;
        $flight->email = $request->email;
        $flight->password = Hash::make($request->password);
        $flight->roll = $request->roll;
        $flight->save();
        return view('adminUsers',[
            'users' => DB::table('users')
                        ->whereIn('roll', [1,2])
                        ->paginate(10),
        ]);
    }


    public function adminHome()
    {
        return view('adminHome');
    }
    public function adminClients()
    {
        $selected_categorys = DB::table('admin_category')->pluck('name');
        $clients = DB::table('admin_clients_info')
                    ->paginate(100);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                    ->where('id' ,'=',$client->user_id)
                    ->pluck('name');

            
            array_push($rolls,$roll[0]);
        }
        return view('adminClients',[
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' => [],
            'rolls'=>$rolls,
            'counters' => DB::table('admin_clients_info')->count(),

        ]);
    }

    public function adminClientsProfile($id)
    {
        
        $ids = DB::table('admin_clients_info')->where('id', $id)->pluck('dependents_ids');
        
        
        $ids = array_map('intval', explode(',', $ids[0]));
        
        $full_name = [];
        foreach ($ids as $_id){
            if ($_id != null){
                $full_name_pre = DB::table('admin_clients_info')->where('id', $_id)->first();
                array_push($full_name,$full_name_pre);
                
            }
        }

        $spouse_id = DB::table('admin_clients_info')->where('id',$id)->pluck('spouse_id');

        if ($spouse_id[0] != null) {
            $spouse = DB::table('admin_clients_info')->where('id',$spouse_id[0])->first();
        }else{
            $spouse = null;
        }
        $logs = DB::table('log')->where('client_id',$id)->latest()->take(5)->get();
        return view('adminClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $id)->first(),
            'categories' =>DB::table('admin_category')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'fullname' => $full_name,
            'ids' => $ids,
            'spouse'=> $spouse,
            'countries'=>DB::table('countries')->get(),
            'logs'=>$logs
        ]);
    }

    public function adminClientsInformation(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $flight->first_name = $request->first_name;
        $flight->last_name = $request->last_name;
        $flight->full_name = $request->first_name." ".$request->last_name;
        $flight->dob_date = $request->dob_date;
        $flight->address = $request->address;
        $flight->primary_phone = $request->phone;
        $flight->other_phone = $request->other_phone;
        $flight->email = $request->email;
        $flight->bs_code = $request->bs_code;
        $flight->citizenship = $request->citizenship;
        $flight->marital_status = $request->marital_status;
        $flight->dependents = $request->dependents;
        $flight->home_status = $request->home_status;
        $flight->notes = $request->notes;
        $flight->category = $request->category;
        $flight->save();

        $Logs = new Log;
        $Logs->content = "Edited Information";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;

        return redirect()->route('admin.clients.profile',['id' => $request->id]);
    }

    public function adminClientsBio(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $flight->client_bio = $request->bio;
        $flight->save();

        $Logs = new Log;
        $Logs->content = "Edited Additional Notes";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;

        return redirect()->route('admin.clients.profile',['id' => $request->id]);
    }

    public function adminIncomeSource(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $highlight ="";
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
        $flight->save();
        $Logs = new Log;
        $Logs->content = "Edited Sources of Incomehighlights";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        return redirect()->route('admin.clients.profile',['id' => $request->id]);
    }

    public function adminDependentEdit(Request $request)
    {
        if ($request->profile_numbers != null){
            $flight = AdminClientCreate::find($request->id);
            foreach ($request->profile_numbers as $index=>$ids) {
                if ($ids != null) {
                    if($index == 0){
                        $dependents_ids = $ids;
                    }else{
                        $dependents_ids .= ",".$ids;
                    }
                }
            }
            $flight->dependents_ids = $dependents_ids;
            $flight->save();
        }
        $Logs = new Log;
        $Logs->content = "Edited Dependent";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        return redirect()->route('admin.clients.profile',['id' => $request->id]);
        
    }
    public function adminSpouseEdit(Request $request)
    {
        $flight = AdminClientCreate::find($request->id);
        if ($request->spouse != null) {
            $flight_other = AdminClientCreate::find(intval($request->spouse));
            $flight_other->spouse_id = intval($request->id);
            $flight_other->save();
            $flight->spouse_id = intval($request->spouse);
            $flight->save();
        }
        $Logs = new Log;
        $Logs->content = "Edited spouse";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        return redirect()->route('admin.clients.profile',['id' => $request->id]);
        
    }
    public function adminHomePropertyEdit(Request $request)
    {
        $flight = AdminClientCreate::find($request->id);
        $flight->resident = $request->residence_radio;
        $flight->home_own_status = $request->house_own_status;
        $flight->home_tax_fee = $request->tax_fee;
        $flight->rent_fee = $request->rent_fee;
        $flight->save();
        $Logs = new Log;
        $Logs->content = "Edited Home property";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        return redirect()->route('admin.clients.profile',['id' => $request->id]);
    }

    public function adminDeductionSource(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $highlight2 ="";
        
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

        $flight->save();
        $Logs = new Log;
        $Logs->content = "Edited Sources of Deduction highlights";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        return redirect()->route('admin.clients.profile',['id' => $request->id]);
    }
    
    public function adminClientsCreate()
    {
        
        return view('adminClientsCreate',[
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get()
            
        ]);
    }
    public function adminClientsFilter1(Request $request)
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
                    ->orWhere(function($query) use ($income) {
                        foreach ($income as $value) {
                            $query->orWhere('income_highlights', 'LIKE', "%".$value.","."%");
                        }
                    })
                    ->orWhere(function($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->orWhere('deduction_highlights', 'LIKE', "%".$value.",".'%');
                        }
                    })
                    ->orWhere(function($query) use ($request) {
                        if ($request->start_date){
                            $query->where('dob_date', ">=",$request->start_date);
                        }
                    })
                    ->orWhere(function($query) use ($request) {
                        if ($request->end_date){
                            $query->where('dob_date', "<",$request->end_date);
                        }
                              
                    })
                    ->paginate(100);

        $counters = DB::table('admin_clients_info')
                            ->whereIn('category', $categorys)
                            ->orWhere(function($query) use ($income) {
                                foreach ($income as $value) {
                                    $query->orWhere('income_highlights', 'LIKE', "%".$value.","."%");
                                }
                            })
                            ->orWhere(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->orWhere('deduction_highlights', 'LIKE', "%".$value.",".'%');
                                }
                            })
                            ->orWhere(function($query) use ($request) {
                                if ($request->start_date){
                                    $query->where('dob_date', ">=",$request->start_date);
                                }
                            })
                            ->orWhere(function($query) use ($request) {
                                if ($request->end_date){
                                    $query->where('dob_date', "<",$request->end_date);
                                }
                                    
                            })
                            ->count();
              
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                    ->where('id' ,'=',$client->user_id)
                    ->pluck('name');

            
            array_push($rolls,$roll[0]);
        }
        return view('adminClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'counters' => $counters,

        ]);
        // return redirect()->route('admin.clients',['clients' =>$clients]);
    }

    public function adminClientsFilter2(Request $request)
    {
        $full_name = $request->full_name;
        $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->paginate(100);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                    ->where('id' ,'=',$client->user_id)
                    ->pluck('name');

            
            array_push($rolls,$roll[0]);
        }
        return view('adminClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' =>[],
            'rolls' =>$rolls,
            'counters' => DB::table('admin_clients_info')->where('full_name', 'LIKE', "%".$full_name.'%')->count(),
        ]);
    }

    public function adminClientsCreateNew(Request $request)
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
        $flight->email = $request->email;
        
        $flight->dependents = $request->dependents;
        $flight->full_name = $request->first_name." ".$request->last_name;
        $flight->resident = $request->residence_radio;
        $flight->home_own_status = $request->house_own_status;
        $flight->home_tax_fee = $request->tax_fee;
        $flight->rent_fee = $request->rent_fee;
        $flight->spouse_id = $request->spouse_id;
        
        
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
        if ($request->spouse_id) {
            $flight_other = AdminClientCreate::find($request->spouse_id);
            $flight_other->spouse_id = $flight->id;
            $flight_other->save();
        }
        $Logs = new Log;
        $Logs->content = "just created";
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $flight->id;
        return redirect()->route('admin.clients');
    }
    public function adminCategory()
    {
        
        return view('adminCategory',[
            'categorys' => DB::table('admin_category')->get()
        ]);
    }

    public function adminCategoryCreate(Request $request)
    {   

        $flight = new AdminClientCreate;

        $flight->name = $request->name;
        $flight->save();
        
        return redirect()->route('admin.category');
    }
    
    public function adminCategoryEdit(Request $request)
    {   

        $flight = AdminCategory::find($request->id);

        $flight->name = $request->name;
        $flight->save();
        return redirect()->route('admin.category');
    }
    public function adminCategoryDelete(Request $request)
    {   

        $flight = AdminCategory::find($request->id);
        $flight->delete();
        return redirect()->route('admin.category');
    }



    public function adminHighlights()
    {   
        return view('adminHighlights',[
            'highlights' => DB::table('admin_highlights')->get()
        ]);
        
    }
    public function adminHighlightsCreate(Request $request)
    {   

        $flight = new AdminHighlights;

        $flight->name = $request->name;
        $flight->save();
        
        return redirect()->route('admin.highlights');
    }
    public function adminHighlightsEdit(Request $request)
    {   

        $flight = AdminHighlights::find($request->id);

        $flight->name = $request->name;
        $flight->save();
        return redirect()->route('admin.highlights');
    }
    public function adminHighlightsDelete(Request $request)
    {   

        $flight = AdminHighlights::find($request->id);

        $flight->delete();
        return redirect()->route('admin.highlights');
    }


    public function adminPermissions()
    {
        return view('adminPermissions');
    }
    public function adminHighlightsIncome()
    {
        return view('adminHighlightsIncome',[
            'highlights' => DB::table('admin_income_highlights')->get()
        ]);
    }
    public function adminHighlightsDeduction()
    {
        
        return view('adminHighlightsDeduction',[
            'highlights' => DB::table('admin_deduction_highlights')->get()
        ]);
    }

    public function adminHighlightsIncomeCreate(Request $request)
    {   
        $this->validate($request, [
            'name' => 'required',
            
        ]); 

        $flight = new AdminIncome;

        $flight->name = $request->name;
        

        $flight->save();
        // DB::table('admin_income_highlights')->insert([
        // 'name' => $request->name,
        // 'value' => $request->value
        // ]);
        return redirect()->route('admin.highlights.income');
    }
    public function adminHighlightsIncomeEdit(Request $request)
    {   
        $this->validate($request, [
            'name' => 'required',
            
        ]); 
        
        $flight = AdminIncome::find($request->id);
        
        $flight->name = $request->name;
        

        $flight->save();
        return redirect()->route('admin.highlights.income');
    }
    public function adminHighlightsIncomeDelete(Request $request)
    {   

        $flight = AdminIncome::find($request->id);

        $flight->delete();
        return redirect()->route('admin.highlights.income');
    }

    public function adminHighlightsDeductionCreate(Request $request)
    {   
        $this->validate($request, [
            'name' => 'required',
            
        ]); 

        $flight = new AdminDeduction;

        $flight->name = $request->name;
        

        $flight->save();
        return redirect()->route('admin.highlights.deduction');
    }
    public function adminHighlightsDeductionEdit(Request $request)
    {   
        $this->validate($request, [
            'name' => 'required',
            
        ]); 

        $flight = AdminDeduction::find($request->id);

        $flight->name = $request->name;
        

        $flight->save();
        return redirect()->route('admin.highlights.deduction');
    }
    public function adminHighlightsDeductionDelete(Request $request)
    {   

        $flight = AdminDeduction::find($request->id);

        $flight->delete();
        return redirect()->route('admin.highlights.Deduction');
    }
}
