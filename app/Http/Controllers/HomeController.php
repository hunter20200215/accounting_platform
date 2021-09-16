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
        
        return view('adminClients',[
            'clients' => DB::table('admin_clients_info')
                            ->where('user_id', Auth::id())
                            ->paginate(100),
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' => [],

        ]);
    }
    public function adminClientsProfile($id)
    {
        
        
        return view('adminClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $id)->first()
        ]);
    }

    public function adminClientsInformation(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);

        $flight->first_name = $request->first_name;
        $flight->last_name = $request->last_name;
        $flight->dob_date = $request->dob_date;

        $flight->save();
        return view('adminClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $request->id)->first()
        ]);
    }

    public function adminClientsBio(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);

        $flight->client_bio = $request->bio;
        

        $flight->save();
        return view('adminClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id',$request->id)->first()
        ]);
    }

    public function adminClientsAddInformation(Request $request)
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
        return view('adminClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $request->id)->first()
        ]);
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
                            $query->where('dob_date', ">=",$request->start_date);
                        }
                    })
                    ->where('user_id', $request->user()->id)
                    ->orWhere(function($query) use ($request) {
                        if ($request->end_date){
                            $query->where('dob_date', "<",$request->end_date);
                        }
                              
                    })
                    ->where('user_id', $request->user()->id)
                    ->paginate(100);

        
        return view('adminClients',[
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
        $highlight ="";
        $highlight2 ="";
        if ($request->income) {
            
            foreach ( $request->income as $index=>$highlight1) {
                if ($index==0){
                    $highlight = $highlight1;
                }else{
                    $highlight .= ",".$highlight1;
                }
            }
            
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
            $flight->deduction_highlights = $highlight2;
        }
        
        if ($request->file('file')) {
            $image = $request->file("file");
            $destinationPath = 'admin/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $flight->attached_doc = "$profileImage";
            
        }


        $flight->save();

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

        $flight = new AdminCategory;

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

        $flight = new AdminIncome;

        $flight->name = $request->name;
        $flight->value = $request->value;

        $flight->save();
        // DB::table('admin_income_highlights')->insert([
        // 'name' => $request->name,
        // 'value' => $request->value
        // ]);
        return redirect()->route('admin.highlights.income');
    }
    public function adminHighlightsIncomeEdit(Request $request)
    {   

        $flight = AdminIncome::find($request->id);

        $flight->name = $request->name;
        $flight->value = $request->value;

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

        $flight = new AdminDeduction;

        $flight->name = $request->name;
        $flight->value = $request->value;

        $flight->save();
        return redirect()->route('admin.highlights.deduction');
    }
    public function adminHighlightsDeductionEdit(Request $request)
    {   

        $flight = AdminDeduction::find($request->id);

        $flight->name = $request->name;
        $flight->value = $request->value;

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
