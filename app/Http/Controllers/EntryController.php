<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Models\AdminClientCreate;
use App\Models\LogDetails;
use App\Models\AdminIncomeDetail;
use App\Models\AdminDeductionDetail;


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
    public function entryClients(Request $request)
    {   
        $selected_categorys = DB::table('admin_category')->pluck('name');
        $clients = DB::table('admin_clients_info')
                    ->where('user_id', Auth::id())
                    ->orderBy('id', 'desc')
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
            'sets' => [0],
            'full_name' => "",
            'counters' => DB::table('admin_clients_info')->where('user_id', Auth::id())->count(),
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',

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

        $incomes = [];
        $deductions  = [];
        $amounts = [];
        $years = [];
        $Damounts = [];
        $Dyears = [];
        if ($request->income) {
            foreach ( $request->income as $index=>$highlight1) {
                array_push($incomes, $highlight1);
                if ($index==0){
                    $highlight = $highlight1;
                }else{
                    $highlight .= ",".$highlight1;
                }
            }
            $highlight = ",".$highlight.",";
            $flight->income_highlights = $highlight;
        }
        if ($request->deductions) {
            foreach ( $request->deductions as $index=>$highlight) {
                array_push($deductions, $highlight);
                if ($index==0){
                    $highlight2 = $highlight;
                }else{
                    $highlight2 .= ",".$highlight;
                }
            }
            $highlight2 = ",".$highlight2.",";
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
        
        foreach ($request->amount as $index=>$data) {
            if ($data != null) {
                array_push($amounts,$data);
                array_push($years,$request->year[$index]);
            }
        }
        foreach ($request->Damount as $index=>$data) {
            if ($data != null) {
                array_push($Damounts,$data);
                array_push($Dyears,$request->Dyear[$index]);
            }
        }
        
        $flight->dependents_ids = $dependents_ids;
        $flight->save();
        if ($request->spouse_id) {
            $flight_other = AdminClientCreate::find($request->spouse_id);
            $flight_other->spouse_id = $flight->id;
            $flight_other->save();
        }
        $Logs = new LogDetails;
        $Logs->content = "just created"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $flight->id;
        $Logs->save();

        foreach ($incomes as $index=>$income_id) {
            $IncomeDetails = new AdminIncomeDetail;
            $IncomeDetails->IncomeID = $income_id;
            $IncomeDetails->Amount = $amounts[$index];
            $IncomeDetails->DYear = $years[$index];
            $IncomeDetails->ClientID = $flight->id;
            $IncomeDetails->save();            
        }
        foreach ($deductions as $index=>$deduction_id) {
            $DeductionDetails = new AdminDeductionDetail;
            $DeductionDetails->DeductionID = $deduction_id;
            $DeductionDetails->Amount = $Damounts[$index];
            $DeductionDetails->DYear = $Dyears[$index];
            $DeductionDetails->ClientID = $flight->id; 
            $DeductionDetails->save();
        }

        return redirect()->route('entry.clients');
    }

    public function entryClientsProfile($id)
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



        $income_highlights = DB::table('admin_clients_info')->where('id', $id)->pluck('income_highlights')->first();
        $highlights_arr = explode (",", $income_highlights);

        $SQL = "SELECT i.id, i.name, d.Amount, d.DYear FROM admin_income_highlights i LEFT JOIN 
                    (SELECT IncomeID, Amount, DYear FROM admin_income_detail WHERE ClientID=$id) d 
                    ON i.id=d.IncomeID";
        $incomes = DB::select(DB::raw($SQL));

        foreach ($incomes as $income) {
            if (in_array($income->id, $highlights_arr))
                $income->checked = 1;
            else
                $income->checked = 0;
        }
        $Deduction_highlights = DB::table('admin_clients_info')->where('id', $id)->pluck('deduction_highlights')->first();
        $highlights_arr1 = explode (",", $Deduction_highlights);

        $SQL1 = "SELECT i.id, i.name, d.Amount, d.DYear FROM admin_deduction_highlights i LEFT JOIN 
                    (SELECT DeductionID, Amount, DYear FROM admin_deduction_detail WHERE ClientID=$id) d 
                    ON i.id=d.DeductionID";
        $deductions = DB::select(DB::raw($SQL1));
        
        return view('entryClientsProfile',[
            'info' => DB::table('admin_clients_info')->where('id', $id)->first(),
            'categories' =>DB::table('admin_category')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'incomes' => $incomes,
            'deductions' => $deductions,
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'fullname' => $full_name,
            'ids' => $ids,
            'spouse'=> $spouse,
            'countries'=>DB::table('countries')->get(),
            'logs'=>$logs,
        ]);
        
    }

    public function entryIncomeSource(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $highlight ="";
        $incomes = [];
        $amounts = [];
        $years = [];
        
        if ($request->income) {
            
            foreach ( $request->income as $index=>$highlight1) {
                array_push($incomes, $highlight1);
                if ($index==0){
                    $highlight = $highlight1;
                }else{
                    $highlight .= ",".$highlight1;
                }
            }
            $highlight = ",".$highlight.",";
            $flight->income_highlights = $highlight;
        }

        foreach ($request->check as $index=>$data) {
            if ($data == 1) {
                array_push($years, $request->year[$index]);
                array_push($amounts, $request->amount[$index]);
            }
        }
        
        $flight->save();
        $Logs = new LogDetails;
        $Logs->content = "Edited Sources of Income"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        foreach ($incomes as $index=>$income_id) {
            $model = AdminIncomeDetail::where('IncomeID',$income_id)
                                        ->where('ClientID',$flight->id)
                                        ->first();
            if ($model) {
                $model->IncomeID = $income_id;
                $model->Amount = $amounts[$index];
                $model->DYear = $years[$index];
                $model->ClientID = $flight->id;
                $model->save();
            } else {
                $IncomeDetails = new AdminIncomeDetail;
                $IncomeDetails->IncomeID = $income_id;
                $IncomeDetails->Amount = $amounts[$index];
                $IncomeDetails->DYear = $years[$index];
                $IncomeDetails->ClientID = $flight->id;
                $IncomeDetails->save();
            }
                        
        }
        return redirect()->route('entry.clients.profile',['id' => $request->id]);
    }
    public function entryDeductionSource(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $highlight2 ="";
        
        $deductions  = [];
        $Damounts = [];
        $Dyears = [];

        if ($request->deductions) {
            foreach ( $request->deductions as $index=>$highlight) {
                array_push($deductions, $highlight);
                if ($index==0){
                    $highlight2 = $highlight;
                }else{
                    $highlight2 .= ",".$highlight;
                }
            }
            $highlight2 = ",".$highlight2.",";
            $flight->deduction_highlights = $highlight2;
        }

        foreach ($request->check as $index=>$data) {
            if ($data != 0) {
                array_push($Damounts,$request->Damount[$index]);
                array_push($Dyears,$request->Dyear[$index]);
            }
        }

        $flight->save();
        $Logs = new LogDetails;
        $Logs->content = "Edited Sources of Deduction"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        foreach ($deductions as $index=>$deduction_id) {
            $model = AdminDeductionDetail::where('DeductionID',$deduction_id)
                                        ->where('ClientID',$flight->id)
                                        ->first();
            if ($model) {
                $model->DeductionID = $deduction_id;
                $model->Amount = $Damounts[$index];
                $model->DYear = $Dyears[$index];
                $model->ClientID = $flight->id;
                $model->save();
            } else {
                $DeductionDetailModel= new AdminDeductionDetail;
                $DeductionDetailModel->DeductionID = $deduction_id;
                $DeductionDetailModel->Amount = $Damounts[$index];
                $DeductionDetailModel->DYear = $Dyears[$index];
                $DeductionDetailModel->ClientID = $flight->id;
                $DeductionDetailModel->save();
            }       
        }
        return redirect()->route('entry.clients.profile',['id' => $request->id]);
    }
    public function entryDependentEdit(Request $request)
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
        
        $Logs = new LogDetails;
        $Logs->content = "Edited Dependent"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
            
        return redirect()->route('entry.clients.profile',['id' => $request->id]);
        
    }
    public function entrySpouseEdit(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        if ($request->spouse != null) {
            $flight_other = AdminClientCreate::find(intval($request->spouse));
            $flight_other->spouse_id = intval($request->id);
            $flight_other->save();
            $flight->spouse_id = intval($request->spouse);
            $flight->save();
        }

        $Logs = new LogDetails;
        $Logs->content = "Edited spouse"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        return redirect()->route('entry.clients.profile',['id' => $request->id]);
        
    }
    public function entryHomePropertyEdit(Request $request)
    {
        $flight = AdminClientCreate::find($request->id);
        $flight->resident = $request->residence_radio;
        $flight->home_own_status = $request->house_own_status;
        $flight->home_tax_fee = $request->tax_fee;
        $flight->rent_fee = $request->rent_fee;
        $flight->save();

        $Logs = new LogDetails;
        $Logs->content = "Edited Home property"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        return redirect()->route('entry.clients.profile',['id' => $request->id]);
    }
    public function entryClientsInformation(Request $request)
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

        $Logs = new LogDetails;
        $Logs->content = "Edited Information"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        return redirect()->route('entry.clients.profile',['id' => $request->id]);
    }
    public function entryClientsBio(Request $request)
    {
        
        $flight = AdminClientCreate::find($request->id);
        $flight->client_bio = $request->bio;
        $flight->save();

        $Logs = new LogDetails;
        $Logs->content = "Edited Additional Notes"." by ".$request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        
        return redirect()->route('entry.clients.profile',['id' => $request->id]);
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

        $start_date = $request->start_date;
        $end_date = $request->end_date;
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
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->orderBy('id', 'desc')
                    ->paginate(100);
                    
        $counters = DB::table('admin_clients_info')
                            ->when($categorys, function ($query, $categorys) {
                                return $query->whereIn('category', $categorys);
                            })
                            ->when($income, function ($query, $income) {
                                return $query->where(function($query) use ($income) {
                                    foreach ($income as $value) {
                                        $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                                    }
                                });
                            })
                            ->when($deduction, function ($query, $deduction) {
                                return $query->where(function($query) use ($deduction) {
                                        foreach ($deduction as $value) {
                                            $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                        }
                                    });
                            })
                            ->when( $start_date, function ($query, $start_date) {
                                return $query->where('dob_date', ">=", $start_date);
                            })
                            ->when($end_date, function ($query, $end_date) {
                                return $query->where('dob_date', "<",$end_date);
                            })
                            ->where('user_id',$request->user()->id)
                            ->count();
              
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                    ->where('id' ,'=',$client->user_id)
                    ->pluck('name');
            array_push($rolls,$roll[0]);
        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => [0],
            'full_name' => "",
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
        ]);
        // return redirect()->route('admin.clients',['clients' =>$clients]);
    }
    public function entryClientsFilter2(Request $request)
    {
        $sets = [];
        $full_name = $request->full_name;
        
        if ($request->sets) {
            foreach ( $request->sets as $index=>$value) {
                $sets[] = $value;
            }
        }
        if (count($sets) == 2) {
            $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->count();
        } elseif ($sets[0]==0) {
            $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->count();
        } elseif ($sets[0] == 1) {
            $clients = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->count();
        } else {
            $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%".$full_name.'%')
                    ->orderBy('id', 'desc')
                    ->count();
        }
        
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                    ->where('id' ,'=',$client->user_id)
                    ->pluck('name');

            
            array_push($rolls,$roll[0]);
        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'user_id' => $request->user()->id,
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' =>[],
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
        ]);
    }

    public function entryOpportunities(Request $request)
    {   

        return view('entryOpportunities');
    }
    public function entrySortById(Request $request)
    { 
        $categorys=[];
        $income = [];
        $deduction =[];
        $rolls =[];
        $sortby = $request->sortId;
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortId == "desc") {
            $rsortby = 'asc';
        } else {
            $rsortby = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1) {
            if ($request->categorys) {
                $categorys = explode(",", $request->categorys);
            } else {
                $categorys = [];
            }

            if ($request->income) {
                $income = explode(",", $request->income);
            } else {
                $income = [];
            }

            if ($request->deduction) {
                $deduction = explode(",", $request->deduction);
            } else {
                $deduction = [];
            }
            
            $clients = DB::table('admin_clients_info')
                        ->when($categorys, function ($query, $categorys) {
                            return $query->whereIn('category', $categorys);
                        })
                        ->when($income, function ($query, $income) {
                            return $query->where(function($query) use ($income) {
                                foreach ($income as $value) {
                                    $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                                }
                            });
                        })
                        ->when($deduction, function ($query, $deduction) {
                            return $query->where(function($query) use ($deduction) {
                                    foreach ($deduction as $value) {
                                        $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                    }
                                });
                        })
                        ->when( $start_date, function ($query, $start_date) {
                            return $query->where('dob_date', ">=", $start_date);
                        })
                        ->when($end_date, function ($query, $end_date) {
                            return $query->where('dob_date', "<",$end_date);
                        })
                        ->where('user_id',$request->user()->id)
                        ->orderBy('id', $sortby)
                        ->paginate(100);
            $counters = DB::table('admin_clients_info')
                        ->when($categorys, function ($query, $categorys) {
                            return $query->whereIn('category', $categorys);
                        })
                        ->when($income, function ($query, $income) {
                            return $query->where(function($query) use ($income) {
                                foreach ($income as $value) {
                                    $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                                }
                            });
                        })
                        ->when($deduction, function ($query, $deduction) {
                            return $query->where(function($query) use ($deduction) {
                                    foreach ($deduction as $value) {
                                        $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                    }
                                });
                        })
                        ->when( $start_date, function ($query, $start_date) {
                            return $query->where('dob_date', ">=", $start_date);
                        })
                        ->when($end_date, function ($query, $end_date) {
                            return $query->where('dob_date', "<",$end_date);
                        })
                        ->where('user_id',$request->user()->id)
                        ->count();
            
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', $sortby)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', $sortby)
                        ->count();
            } elseif ($sets[0]==0) {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', $sortby)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', $sortby)
                        ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', $sortby)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', 'desc')
                        ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', $sortby)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('id', 'desc')
                        ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        
        } else {
            $clients = DB::table('admin_clients_info')
                        ->orderBy('id', $sortby)
                        ->where('user_id',$request->user()->id)
                        ->paginate(100);
            $counters = DB::table('admin_clients_info')
                        ->orderBy('id', $sortby)
                        ->where('user_id',$request->user()->id)
                        ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }

        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => $rsortby,
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
        ]);
    }

    public function entrySortByName(Request $request)
    {   
        $categorys=[];
        $income = [];
        $deduction =[];
        $rolls =[];
        $sortName = $request->sortName;
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortName == "desc") {
            $rsortName = 'asc';
        } else {
            $rsortName = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1) {
            if ($request->categorys) {
                $categorys = explode(",", $request->categorys);
            } else {
                $categorys = [];
            }

            if ($request->income) {
                $income = explode(",", $request->income);
            } else {
                $income = [];
            }

            if ($request->deduction) {
                $deduction = explode(",", $request->deduction);
            } else {
                $deduction = [];
            }
            
            $clients = DB::table('admin_clients_info')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->orderBy('full_name', $sortName)
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->count();
            
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('full_name', $sortName)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0]==0) {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('full_name', $sortName)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('full_name', $sortName)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('full_name', $sortName)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        
        } else {
            $clients = DB::table('admin_clients_info')
                        ->orderBy('full_name', $sortName)
                        ->where('user_id',$request->user()->id)
                        ->paginate(100);
            $counters = DB::table('admin_clients_info')
                        ->where('user_id',$request->user()->id)
                        ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }

        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => $rsortName,
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
        ]);
    }

    public function entrySortByPhone(Request $request)
    {   
        $categorys=[];
        $income = [];
        $deduction =[];
        $rolls =[];
        $sortPhone ="";
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortPhone == "desc") {
            $sortPhone = 'asc';
        } else {
            $sortPhone = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1) {
            if ($request->categorys) {
                $categorys = explode(",", $request->categorys);
            } else {
                $categorys = [];
            }

            if ($request->income) {
                $income = explode(",", $request->income);
            } else {
                $income = [];
            }

            if ($request->deduction) {
                $deduction = explode(",", $request->deduction);
            } else {
                $deduction = [];
            }
            
            $clients = DB::table('admin_clients_info')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->orderBy('primary_phone', $sortPhone)
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->count();
            
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('primary_phone', $sortPhone)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0]==0) {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('primary_phone', $sortPhone)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('primary_phone', $sortPhone)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('primary_phone', $sortPhone)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        
        } else {
            $clients = DB::table('admin_clients_info')
                        ->orderBy('primary_phone', $sortPhone)
                        ->where('user_id',$request->user()->id)
                        ->paginate(100);
            $counters = DB::table('admin_clients_info')
                        ->where('user_id',$request->user()->id)
                        ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }

        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => $sortPhone,
            'sortCreatedBy' =>'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
        ]);
    }

    public function entrySortByCreatedBy(Request $request)
    {   
        $categorys=[];
        $income = [];
        $deduction =[];
        $rolls =[];
        $sortCreatedBy ="";
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortCreatedBy == "desc") {
            $sortCreatedBy = 'asc';
        } else {
            $sortCreatedBy = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1) {
            if ($request->categorys) {
                $categorys = explode(",", $request->categorys);
            } else {
                $categorys = [];
            }

            if ($request->income) {
                $income = explode(",", $request->income);
            } else {
                $income = [];
            }

            if ($request->deduction) {
                $deduction = explode(",", $request->deduction);
            } else {
                $deduction = [];
            }
            
            $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*','users.name as created_name')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->orderBy('created_name', $sortCreatedBy)
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*','users.name as created_name')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->count();
            
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_name', $sortCreatedBy)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_name', $sortCreatedBy)
                        ->count();
            } elseif ($sets[0]==0) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_name', $sortCreatedBy)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_name', $sortCreatedBy)
                        ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_name', $sortCreatedBy)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('full_name', 'desc')
                        ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->where('user_id',$request->user()->id)
                        ->orderBy('created_name', $sortCreatedBy)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->where('user_id',$request->user()->id)
                        ->orderBy('full_name', 'desc')
                        ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        
        } else {
            $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('user_id',$request->user()->id)
                        ->orderBy('created_name', $sortCreatedBy)
                        ->paginate(100);
            
            $counters = DB::table('admin_clients_info')
                        ->where('user_id',$request->user()->id)
                        ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }

        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>$sortCreatedBy,
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
        ]);
    }

    public function entrySortByDataAdded(Request $request)
    {   
        $categorys=[];
        $income = [];
        $deduction =[];
        $rolls =[];
        $sortDataAdded ="";
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortDataAdded == "desc") {
            $sortDataAdded = 'asc';
        } else {
            $sortDataAdded = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1) {
            if ($request->categorys) {
                $categorys = explode(",", $request->categorys);
            } else {
                $categorys = [];
            }

            if ($request->income) {
                $income = explode(",", $request->income);
            } else {
                $income = [];
            }

            if ($request->deduction) {
                $deduction = explode(",", $request->deduction);
            } else {
                $deduction = [];
            }
            
            $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*','users.name as created_name')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->orderBy('created_at', $sortDataAdded)
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*','users.name as created_name')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->count();
            
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_at', $sortDataAdded)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0]==0) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_at', $sortDataAdded)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('created_at', $sortDataAdded)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->where('user_id',$request->user()->id)
                        ->orderBy('created_at', $sortDataAdded)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->where('user_id',$request->user()->id)
                        ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        
        } else {
            $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->orderBy('created_at', $sortDataAdded)
                        ->where('user_id',$request->user()->id)
                        ->paginate(100);
            $counters = DB::table('admin_clients_info')
                        ->where('user_id',$request->user()->id)
                        ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }

        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' =>$sortDataAdded,
            'sortLastTouch' => 'desc',
        ]);
    }
    

    public function entrySortByLastTouch(Request $request)
    {   
        $categorys=[];
        $income = [];
        $deduction =[];
        $rolls =[];
        $sortLastTouch ="";
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortLastTouch == "desc") {
            $sortLastTouch = 'asc';
        } else {
            $sortLastTouch = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1) {
            if ($request->categorys) {
                $categorys = explode(",", $request->categorys);
            } else {
                $categorys = [];
            }

            if ($request->income) {
                $income = explode(",", $request->income);
            } else {
                $income = [];
            }

            if ($request->deduction) {
                $deduction = explode(",", $request->deduction);
            } else {
                $deduction = [];
            }
            
            $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*','users.name as created_name')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->orderBy('updated_at', $sortLastTouch)
                    ->paginate(100);
            $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*','users.name as created_name')
                    ->when($categorys, function ($query, $categorys) {
                        return $query->whereIn('category', $categorys);
                    })
                    ->when($income, function ($query, $income) {
                        return $query->where(function($query) use ($income) {
                            foreach ($income as $value) {
                                $query->where('income_highlights', 'LIKE', "%".",".$value.","."%");
                            }
                        });
                    })
                    ->when($deduction, function ($query, $deduction) {
                        return $query->where(function($query) use ($deduction) {
                                foreach ($deduction as $value) {
                                    $query->where('deduction_highlights', 'LIKE', "%".",".$value.",".'%');
                                }
                            });
                    })
                    ->when( $start_date, function ($query, $start_date) {
                        return $query->where('dob_date', ">=", $start_date);
                    })
                    ->when($end_date, function ($query, $end_date) {
                        return $query->where('dob_date', "<",$end_date);
                    })
                    ->where('user_id',$request->user()->id)
                    ->count();
            
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('updated_at', $sortLastTouch)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orWhere('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0]==0) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('updated_at', $sortLastTouch)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->orderBy('updated_at', $sortLastTouch)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('client_bio', 'LIKE', "%".$full_name.'%')
                        ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->orderBy('updated_at', $sortLastTouch)
                        ->paginate(100);
                $counters = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('full_name', 'LIKE', "%".$full_name.'%')
                        ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }
        
        } else {
            $clients = DB::table('admin_clients_info')
                        ->leftJoin('users', function ($join) {
                            $join->on('admin_clients_info.user_id', '=', 'users.id');
                        })
                        ->select('admin_clients_info.*','users.name as created_name')
                        ->where('user_id',$request->user()->id)
                        ->orderBy('updated_at', $sortLastTouch)
                        ->paginate(100);
            $counters = DB::table('admin_clients_info')
                        ->where('user_id',$request->user()->id)
                        ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                        ->where('id' ,'=',$client->user_id)
                        ->pluck('name');
                array_push($rolls,$roll[0]);
            }

        }
        return view('entryClients',[
            'clients' =>$clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' =>$deduction,
            'rolls' =>$rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'user_id' => $request->user()->id,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' =>'desc',
            'sortDataAdded' =>'desc',
            'sortLastTouch' => $sortLastTouch,
        ]);
    }
}
