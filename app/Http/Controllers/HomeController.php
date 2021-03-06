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
use App\Models\AdminCampaign;

use App\Models\User;
use App\Models\LogDetails;
use App\Models\AdminIncomeDetail;
use App\Models\AdminDeductionDetail;
use App\Models\ClientProduct;
use App\Models\Campaigns;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use Session;
use App\Models\Insert_file;
use Illuminate\Support\Facades\Storage;


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
        $clients = DB::table('admin_clients_info')
            ->orderBy('updated_at', 'desc')
            ->paginate(10);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                ->where('id', '=', $client->user_id)
                ->pluck('name');
            array_push($rolls, $roll[0]);
        }
        $logs = [];
        foreach ($clients as $client) {
            $log = DB::table('log')->where('client_id', $client->id)->latest()->first();
            array_push($logs, $log);
        }
        
        return view('admin.adminHome',[
            'clients' => $clients,
            'rolls' => $rolls,
            'logs' => $logs,
        ]);
    }
    public function dataEntryIndex()
    {
        return view('entry.dataEntryHome');
    }

    public function bookkeeperIndex()
    {
        return view('bookkeeper.bookkeeperHome');
    }
    public function adminUsers()
    {
        return view('admin.adminUsers', [
            'users' => DB::table('users')
                ->whereIn('roll', [1, 2])
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
        return view('admin.adminUsers', [
            'users' => DB::table('users')
                ->whereIn('roll', [1, 2])
                ->paginate(10),
        ]);
    }
    public function adminUsersDelete(Request $request)
    {
        $flight = User::find($request->id);
        $flight->delete();
        return view('admin.adminUsers', [
            'users' => DB::table('users')
                ->whereIn('roll', [1, 2])
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
        return view('admin.adminUsers', [
            'users' => DB::table('users')
                ->whereIn('roll', [1, 2])
                ->paginate(10),
        ]);
    }

    public function adminHome()
    {
        $clients = DB::table('admin_clients_info')
            ->orderBy('updated_at', 'desc')
            ->paginate(10);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                ->where('id', '=', $client->user_id)
                ->pluck('name');
            array_push($rolls, $roll[0]);
        }
        $logs = [];
        foreach ($clients as $client) {
            $log = DB::table('log')->where('client_id', $client->id)->latest()->first();
            array_push($logs, $log);
        }
        
        return view('admin.adminHome',[
            'clients' => $clients,
            'rolls' => $rolls,
            'logs' => $logs,
        ]);
    }
    public function adminClients()
    {
        $selected_categorys = DB::table('admin_category')->pluck('name');
        $clients = DB::table('admin_clients_info')
            ->orderBy('id', 'desc')
            ->paginate(100);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                ->where('id', '=', $client->user_id)
                ->pluck('name');
            array_push($rolls, $roll[0]);
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' => [],
            'rolls' => $rolls,
            'counters' => DB::table('admin_clients_info')->count(),
            'sets' => [0],
            'full_name' => "",
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => [],
        ]);
    }

    public function adminClientsProfile($id)
    {

        $ids = DB::table('admin_clients_info')->where('id', $id)->pluck('dependents_ids');
        $ids = array_map('intval', explode(',', $ids[0]));
        $full_name = [];
        foreach ($ids as $_id) {
            if ($_id != null) {
                $full_name_pre = DB::table('admin_clients_info')->where('id', $_id)->first();
                if ($full_name_pre) {
                    array_push($full_name, $full_name_pre);
                }
            }
        }
        $spouse_id = DB::table('admin_clients_info')->where('id', $id)->pluck('spouse_id');
        if ($spouse_id[0] != null) {
            $spouse = DB::table('admin_clients_info')->where('id', $spouse_id[0])->first();
        } else {
            $spouse = null;
        }
        $logs = DB::table('log')->where('client_id', $id)->latest()->take(5)->get();
        $income_highlights = DB::table('admin_clients_info')->where('id', $id)->pluck('income_highlights')->first();
        $highlights_arr = explode(",", $income_highlights);

        $SQL = "SELECT i.id, i.name, d.Amount, d.DYear FROM admin_income_highlights i LEFT JOIN 
                    (SELECT IncomeID, Amount, DYear FROM admin_income_detail WHERE ClientID=$id) d 
                    ON i.id=d.IncomeID";
        $incomes = DB::select(DB::raw($SQL));
        $campaigns = Campaigns::get();
        $selected_campaigns = AdminCampaign::where('client_id',$id)->pluck('campaign_id')->toArray();
        $clients = AdminClientCreate::get();
        foreach ($incomes as $income) {
            if (in_array($income->id, $highlights_arr))
                $income->checked = 1;
            else
                $income->checked = 0;
        }
        $Deduction_highlights = DB::table('admin_clients_info')->where('id', $id)->pluck('deduction_highlights')->first();
        $highlights_arr1 = explode(",", $Deduction_highlights);

        $SQL1 = "SELECT i.id, i.name, d.Amount, d.DYear FROM admin_deduction_highlights i LEFT JOIN 
                    (SELECT DeductionID, Amount, DYear FROM admin_deduction_detail WHERE ClientID=$id) d 
                    ON i.id=d.DeductionID";
        $deductions = DB::select(DB::raw($SQL1));

        $products = DB::table('insurance_products')->where('client_id',$id)->get();
        return view('admin.adminClientsProfile', [
            'info' => DB::table('admin_clients_info')->where('id', $id)->first(),
            'clients' => $clients,
            'categories' => DB::table('admin_category')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'incomes' => $incomes,
            'deductions' => $deductions,
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'fullname' => $full_name,
            'ids' => $ids,
            'spouse' => $spouse,
            'countries' => DB::table('countries')->get(),
            'logs' => $logs,
            'products' => $products,
            'campaigns' => $campaigns,
            'selected_campaigns' => $selected_campaigns,
        ]);
    }

    public function adminClientsInformation(Request $request)
    {
        $flight = AdminClientCreate::find($request->id);
        $flight->first_name = $request->first_name;
        $flight->last_name = $request->last_name;
        $flight->full_name = $request->first_name . " " . $request->last_name;
        $flight->dob_date = $request->dob_date;
        $flight->dod_date = $request->dod_date;
        $flight->address1 = $request->address1;
        $flight->address2 = $request->address2;
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
        if ($request->campaigns) {
            foreach ($request->campaigns as $index => $campaign) {
                $existed_item = AdminCampaign::where('client_id',$request->id)->where('campaign_id',$campaign)->first();
                if ($existed_item == null) {
                    $flight1 = new AdminCampaign;
                    $flight1->client_id = $request->id;
                    $flight1->campaign_id = $campaign;
                    $flight1->save();
                }
                
            }
        }
        $Logs = new LogDetails;
        $Logs->content = "Edited Information" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }

    public function adminClientsNotes(Request $request)
    {
       
        $flight = AdminClientCreate::find($request->id);
        $flight->notes = $request->notes;
        $flight->save();

        $Logs = new LogDetails;
        $Logs->content = "Edited Additional Notes" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }

    public function adminIncomeSource(Request $request)
    {

        $flight = AdminClientCreate::find($request->id);
        $highlight = "";
        $incomes = [];
        $amounts = [];
        $years = [];

        if ($request->income) {

            foreach ($request->income as $index => $highlight1) {
                array_push($incomes, $highlight1);
                if ($index == 0) {
                    $highlight = $highlight1;
                } else {
                    $highlight .= "," . $highlight1;
                }
            }
            $highlight = "," . $highlight . ",";
            $flight->income_highlights = $highlight;
        }

        foreach ($request->check as $index => $data) {
            if ($data == 1) {
                array_push($years, $request->year[$index]);
                array_push($amounts, $request->amount[$index]);
            }
        }
        $flight->save();
        $Logs = new LogDetails;
        $Logs->content = "Edited Source of Income" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        foreach ($incomes as $index => $income_id) {
            $model = AdminIncomeDetail::where('IncomeID', $income_id)
                ->where('ClientID', $flight->id)
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

        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }
    public function adminDeductionSource(Request $request)
    {

        $flight = AdminClientCreate::find($request->id);
        $highlight2 = "";

        $deductions  = [];
        $Damounts = [];
        $Dyears = [];

        if ($request->deductions) {
            foreach ($request->deductions as $index => $highlight) {
                array_push($deductions, $highlight);
                if ($index == 0) {
                    $highlight2 = $highlight;
                } else {
                    $highlight2 .= "," . $highlight;
                }
            }
            $highlight2 = "," . $highlight2 . ",";
            $flight->deduction_highlights = $highlight2;
        }

        foreach ($request->check as $index => $data) {
            if ($data != 0) {
                array_push($Damounts, $request->Damount[$index]);
                array_push($Dyears, $request->Dyear[$index]);
            }
        }

        $flight->save();
        $Logs = new LogDetails;
        $Logs->content = "Edited Sources of Deduction" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();

        foreach ($deductions as $index => $deduction_id) {
            $model = AdminDeductionDetail::where('DeductionID', $deduction_id)
                ->where('ClientID', $flight->id)
                ->first();
            if ($model) {
                $model->DeductionID = $deduction_id;
                $model->Amount = $Damounts[$index];
                $model->DYear = $Dyears[$index];
                $model->ClientID = $flight->id;
                $model->save();
            } else {
                $DeductionDetailModel = new AdminDeductionDetail;
                $DeductionDetailModel->DeductionID = $deduction_id;
                $DeductionDetailModel->Amount = $Damounts[$index];
                $DeductionDetailModel->DYear = $Dyears[$index];
                $DeductionDetailModel->ClientID = $flight->id;
                $DeductionDetailModel->save();
            }
        }
        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }

    public function adminDependentEdit(Request $request)
    {
        if ($request->profile_numbers != null) {
            $flight = AdminClientCreate::find($request->id);
            foreach ($request->profile_numbers as $index => $ids) {
                if ($ids != null) {
                    if ($index == 0) {
                        $dependents_ids = $ids;
                    } else {
                        $dependents_ids .= ",".$ids;
                    }
                }
            }
            $flight->dependents_ids = $dependents_ids;
            $flight->save();
        }
        $Logs = new LogDetails;
        $Logs->content = "Edited Dependent" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }
    public function adminSpouseEdit(Request $request)
    {   
        
        $flight = AdminClientCreate::find($request->id);
        if ($request->spouse) {
            $flight_other = AdminClientCreate::find(intval($request->spouse));
            $flight_other->spouse_id = intval($request->id);
            $flight_other->save();
            $flight->spouse_id = intval($request->spouse);
            $flight->save();
        }
        $Logs = new LogDetails;
        $Logs->content = "Edited spouse" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }
    public function adminHomePropertyEdit(Request $request)
    {
        $flight = AdminClientCreate::find($request->id);
        $flight->resident = $request->residence_radio;
        $flight->home_own_status = $request->house_own_status;
        $flight->home_tax_fee = $request->tax_fee;
        $flight->rent_fee = $request->rent_fee;
        $flight->save();
        $Logs = new LogDetails;
        $Logs->content = "Edited Home property" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }

    public function adminInsuranceProductEdit(Request $request)
    {
        $products = $request->products;
        $product_ids =$request->product_ids;
        foreach ($products as $index => $product){
            if(isset($product)){
                if (isset($product_ids[$index])){
                    $flight = ClientProduct::find($product_ids[$index]);
                    $flight->client_id = $request->id;
                    $flight->product_name = $product;
                    $flight->save();
                } else {
                    $flight = new ClientProduct;
                    $flight->client_id = $request->id;
                    $flight->product_name = $product;
                    $flight->save();
                }
            }
        }
        
        $Logs = new LogDetails;
        $Logs->content = "Edited Insurance Product" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $request->id;
        $Logs->save();
        return redirect()->route('admin.clients.profile', ['id' => $request->id]);
    }
    public function adminClientsCreate()
    {

        return view('admin.adminClientsCreate', [
            'clients' => DB::table('admin_clients_info')->get(),
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'countries' => DB::table('countries')->get(),
            'campaigns' => Campaigns::get(),

        ]);
    }
    public function adminClientsFilter1(Request $request)
    {
        $categorys = [];
        $income = [];
        $deduction = [];
        if ($request->categorys) {
            foreach ($request->categorys as $index => $value) {
                $categorys[] = $value;
            }
        }
        if ($request->income) {
            foreach ($request->income as $index => $value) {
                $income[] = $value;
            }
        }
        if ($request->deduction) {
            foreach ($request->deduction as $index => $value) {
                $deduction[] = $value;
            }
        }
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->campaigns) {
            foreach ($request->campaigns as $index => $value) {
                $capmpaign_ids[] = $value;
            }
        } else {
            $capmpaign_ids = [];
        }
        $clients = DB::table('admin_clients_info')
            ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
            ->select('admin_clients_info.*')
            ->distinct()
            ->when($categorys, function ($query, $categorys) {
                return $query->whereIn('admin_clients_info.category', $categorys);
            })
            ->when($income, function ($query, $income) {
                return $query->where(function ($query) use ($income) {
                    foreach ($income as $value) {
                        $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                    }
                });
            })
            ->when($deduction, function ($query, $deduction) {
                return $query->where(function ($query) use ($deduction) {
                    foreach ($deduction as $value) {
                        $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                    }
                });
            })
            ->when($start_date, function ($query, $start_date) {
                return $query->where('admin_clients_info.dob_date', ">=", $start_date);
            })
            ->when($end_date, function ($query, $end_date) {
                return $query->where('admin_clients_info.dob_date', "<", $end_date);
            })
            ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
            })
            ->orderBy('admin_clients_info.id', 'desc')
            ->paginate(100);
        
        $counters = DB::table('admin_clients_info')
            ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
            ->select('admin_clients_info.*')
            ->distinct()
            ->when($categorys, function ($query, $categorys) {
                return $query->whereIn('admin_clients_info.category', $categorys);
            })
            ->when($income, function ($query, $income) {
                return $query->where(function ($query) use ($income) {
                    foreach ($income as $value) {
                        $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                    }
                });
            })
            ->when($deduction, function ($query, $deduction) {
                return $query->where(function ($query) use ($deduction) {
                    foreach ($deduction as $value) {
                        $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                    }
                });
            })
            ->when($start_date, function ($query, $start_date) {
                return $query->where('admin_clients_info.dob_date', ">=", $start_date);
            })
            ->when($end_date, function ($query, $end_date) {
                return $query->where('admin_clients_info.dob_date', "<", $end_date);
            })
            ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
            })
            ->get();
        $counters = count($counters);
        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                ->where('id', '=', $client->user_id)
                ->pluck('name');


            array_push($rolls, $roll[0]);
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => [0],
            'full_name' => "",
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,

        ]);
    }

    public function adminClientsFilter2(Request $request)
    {
        $sets = [];
        $full_name = $request->full_name;

        if ($request->sets) {
            foreach ($request->sets as $index => $value) {
                $sets[] = $value;
            }
        }
        if (count($sets) == 2) {
            $clients = DB::table('admin_clients_info')
                ->where('full_name', 'LIKE', "%" . $full_name . '%')
                ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->where('full_name', 'LIKE', "%" . $full_name . '%')
                ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->count();
        } elseif ($sets[0] == 0) {
            $clients = DB::table('admin_clients_info')
                ->where('full_name', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->where('full_name', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->count();
        } elseif ($sets[0] == 1) {
            $clients = DB::table('admin_clients_info')
                ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->count();
        } else {
            $clients = DB::table('admin_clients_info')
                ->where('full_name', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->where('full_name', 'LIKE', "%" . $full_name . '%')
                ->orderBy('id', 'desc')
                ->count();
        }

        $rolls = [];
        foreach ($clients as $client) {
            $roll = DB::table('users')
                ->where('id', '=', $client->user_id)
                ->pluck('name');


            array_push($rolls, $roll[0]);
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => [],
            'selected_income' => [],
            'selected_deduction' => [],
            'rolls' => $rolls,
            'counters' => $counters,
            'sets' => $sets,
            'full_name' => $full_name,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => [],

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
        $flight->address1 = $request->address1;
        $flight->address2 = $request->address2;
        $flight->citizenship = $request->citizenship;
        $flight->user_id = $request->user()->id;
        $flight->bs_code = $request->bs_code;
        $flight->campaign_id = $request->campaign_id;
        $flight->email = $request->email;

        $flight->dependents = $request->dependents;
        $flight->full_name = $request->first_name . " " . $request->last_name;
        $flight->resident = $request->residence_radio;
        $flight->home_own_status = $request->house_own_status;
        $flight->home_tax_fee = $request->tax_fee;
        $flight->rent_fee = $request->rent_fee;
        $flight->spouse_id = $request->spouse_id;
        $highlight = "";
        $highlight2 = "";
        $dependents_ids = "";

        $incomes = [];
        $deductions  = [];
        $amounts = [];
        $years = [];
        $Damounts = [];
        $Dyears = [];
        
        if ($request->income) {
            foreach ($request->income as $index => $highlight1) {
                array_push($incomes, $highlight1);
                if ($index == 0) {
                    $highlight = $highlight1;
                } else {
                    $highlight .= "," . $highlight1;
                }
            }
            $highlight = "," . $highlight . ",";
            $flight->income_highlights = $highlight;
        }
        if ($request->deductions) {
            foreach ($request->deductions as $index => $highlight) {
                array_push($deductions, $highlight);
                if ($index == 0) {
                    $highlight2 = $highlight;
                } else {
                    $highlight2 .= "," . $highlight;
                }
            }
            $highlight2 = "," . $highlight2 . ",";
            $flight->deduction_highlights = $highlight2;
        }

        if ($request->file('file')) {
            $image = $request->file("file");
            $destinationPath = 'admin/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $flight->attached_doc = "$profileImage";
        }

        if ($request->dependents == "Yes") {
            foreach ($request->profile_numbers as $index => $ids) {
                if ($ids != null) {
                    if ($index == 0) {
                        $dependents_ids = $ids;
                    } else {
                        $dependents_ids .= "," . $ids;
                    }
                }
            }
        }

        foreach ($request->amount as $index => $data) {
            if ($data != null) {
                array_push($amounts, $data);
                array_push($years, $request->year[$index]);
            }
        }
        foreach ($request->Damount as $index => $data) {
            if ($data != null) {
                array_push($Damounts, $data);
                array_push($Dyears, $request->Dyear[$index]);
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
        $Logs->content = "just created" . " by " . $request->user()->name;
        $Logs->user_id = $request->user()->id;
        $Logs->client_id = $flight->id;
        $Logs->save();
        foreach ($incomes as $index => $income_id) {
            $IncomeDetails = new AdminIncomeDetail;
            $IncomeDetails->IncomeID = $income_id;
            $IncomeDetails->Amount = $amounts[$index] ?? null ;
            $IncomeDetails->DYear = $years[$index] ?? null;
            $IncomeDetails->ClientID = $flight->id;
            $IncomeDetails->save();
        }
        foreach ($deductions as $index => $deduction_id) {
            $DeductionDetails = new AdminDeductionDetail;
            $DeductionDetails->DeductionID = $deduction_id;
            $DeductionDetails->Amount = $Damounts[$index]?? null ;
            $DeductionDetails->DYear = $Dyears[$index]?? null ;
            $DeductionDetails->ClientID = $flight->id;
            $DeductionDetails->save();
        }

        return redirect()->route('admin.clients');
    }
    public function adminCategory()
    {

        return view('admin.adminCategory', [
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
        return view('admin.adminHighlights', [
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
        return view('admin.adminPermissions');
    }
    public function adminHighlightsIncome()
    {
        return view('admin.adminHighlightsIncome', [
            'highlights' => DB::table('admin_income_highlights')->get()
        ]);
    }
    public function adminHighlightsDeduction()
    {

        return view('admin.adminHighlightsDeduction', [
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
    public function adminOpportunities(Request $request)
    {
        $today = date('Y-m-d');
        $sDate = new \DateTime($today);
        $sDate->sub(new \DateInterval('P72Y'));
        $sDate = $sDate->format('Y-m-d');
        $eDate = new \DateTime($today);
        $eDate->sub(new \DateInterval('P69Y'));
        $eDate = $eDate->format('Y-m-d');

        $clients = DB::table('admin_clients_info')
            ->where('dob_date', '>', $sDate)
            ->where('dob_date', '<=', $eDate)
            ->orderBy('dob_date', 'asc')
            ->paginate(100);
        $counters = DB::table('admin_clients_info')
            ->where('dob_date', '>', $sDate)
            ->where('dob_date', '<=', $eDate)
            ->count();
        $links = [];
        $ages = [];
        $activities = [];
        $updates = [];
        foreach ($clients as $client) {
            if ($client->dependents_ids) {
                $link1 = count(explode(',', $client->dependents_ids));
            } else {
                $link1 = 0;
            }

            if ($client->spouse_id) {
                $link2 = 1;
            } else {
                $link2 = 0;
            }
            $link = $link1 + $link2;
            array_push($links, $link);

            $age = Carbon::parse($client->dob_date)->age;
            array_push($ages, $age);



            $activity = DB::table('admin_income_detail')
                ->where('ClientID', '=', $client->id)
                ->orderBy('DYear', 'desc')
                ->pluck('DYear')
                ->first();
            array_push($activities, $activity);

            $now = time(); // or your date as well
            $your_date = strtotime($client->updated_at);
            $datediff = $now - $your_date;
            if ($datediff / (60 * 60 * 24) < 1) {
                $update = "in the last 24hrs";
            } elseif ($datediff / (60 * 60 * 24) < 30) {
                $update = "in the past week";
            } elseif ($datediff / (60 * 60 * 24) > 30) {
                $update = "in the past month";
            } elseif ($datediff / (60 * 60 * 24) < 365) {
                $update = "in the past year";
            } else {
                $update = "not recently";
            }
            array_push($updates, $update);
        }

        return view('admin.adminOpportunities', [
            'clients' => $clients,
            'counters' => $counters,
            'links' => $links,
            'ages' => $ages,
            'activities' => $activities,
            'updates' => $updates,
        ]);
    }
    public function adminMarketing(Request $request)
    {
        
        $campaigns = DB::table("campaigns")
                        ->leftJoin('users','campaigns.user_id', '=', 'users.id')
                        ->select('campaigns.*','users.id as user_table_id','users.name')
                        ->paginate(100);
        return view('admin.adminMarketing', [
            'campaigns' => $campaigns,
        ]);
    }

    public function adminSortById(Request $request)
    {
        
        $categorys = [];
        $income = [];
        $deduction = [];
        $rolls = [];
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
        $capmpaign_ids = [];
        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1 || $request->campaigns) {
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
            if ($request->campaigns) {
                $capmpaign_ids = explode(",", $request->campaigns);
            } else {
                $capmpaign_ids = [];
            }
            
            $clients = DB::table('admin_clients_info')
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->orderBy('id', $sortby)
                ->paginate(100);
            
            $counters = DB::table('admin_clients_info')
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->count();

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', $sortby)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', $sortby)
                    ->count();
            } elseif ($sets[0] == 0) {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', $sortby)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', $sortby)
                    ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', $sortby)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', 'desc')
                    ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', $sortby)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('id', 'desc')
                    ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } else {
            $clients = DB::table('admin_clients_info')
                ->orderBy('id', $sortby)
                ->paginate(100);
            
            $counters = DB::table('admin_clients_info')
                ->orderBy('id', $sortby)
                ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => $rsortby,
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,
        ]);
    }

    public function adminSortByName(Request $request)
    {
        $categorys = [];
        $income = [];
        $deduction = [];
        $rolls = [];
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
        $capmpaign_ids = [];
        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1 || $request->campaigns) {
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
            if ($request->campaigns) {
                $capmpaign_ids = explode(",", $request->campaigns);
            } else {
                $capmpaign_ids = [];
            }

            $clients = DB::table('admin_clients_info')
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->orderBy('full_name', $sortName)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->count();

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', $sortName)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', $sortName)
                    ->count();
            } elseif ($sets[0] == 0) {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', $sortName)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', $sortName)
                    ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', $sortName)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', 'desc')
                    ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', $sortName)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', 'desc')
                    ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } else {
            $clients = DB::table('admin_clients_info')
                ->orderBy('full_name', $sortName)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->orderBy('full_name', $sortName)
                ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => $rsortName,
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,
        ]);
    }

    public function adminSortByPhone(Request $request)
    {
        $categorys = [];
        $income = [];
        $deduction = [];
        $rolls = [];
        $sortPhone = $request->sortPhone;
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        $capmpaign_ids = [];
        if ($request->sortPhone == "desc") {
            $rsortPhone = 'asc';
        } else {
            $rsortPhone = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1 || $request->campaigns) {
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
            if ($request->campaigns) {
                $capmpaign_ids = explode(",", $request->campaigns);
            } else {
                $capmpaign_ids = [];
            }

            $clients = DB::table('admin_clients_info')
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->orderBy('primary_phone', $sortPhone)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->count();

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('primary_phone', $sortPhone)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('primary_phone', $sortPhone)
                    ->count();
            } elseif ($sets[0] == 0) {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('primary_phone', $sortPhone)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('primary_phone', $sortPhone)
                    ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('primary_phone', $sortPhone)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', 'desc')
                    ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('primary_phone', $sortPhone)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', 'desc')
                    ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } else {
            $clients = DB::table('admin_clients_info')
                ->orderBy('primary_phone', $sortPhone)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => $rsortPhone,
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,
        ]);
    }

    public function adminSortByCreatedBy(Request $request)
    {
        $categorys = [];
        $income = [];
        $deduction = [];
        $rolls = [];
        $sortCreatedBy = $request->sortCreatedBy;
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        $capmpaign_ids = [];
        if ($request->sortCreatedBy == "desc") {
            $rsortCreatedBy = 'asc';
        } else {
            $rsortCreatedBy = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1 || $request->campaigns) {
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
            if ($request->campaigns) {
                $capmpaign_ids = explode(",", $request->campaigns);
            } else {
                $capmpaign_ids = [];
            }

            $clients = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*','users.name as created_name')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->orderBy('created_name', $sortCreatedBy)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*','users.name as created_name')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->count();

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_name', $sortCreatedBy)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_name', $sortCreatedBy)
                    ->count();
            } elseif ($sets[0] == 0) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_name', $sortCreatedBy)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_name', $sortCreatedBy)
                    ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_name', $sortCreatedBy)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', 'desc')
                    ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_name', $sortCreatedBy)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('full_name', 'desc')
                    ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } else {
            $clients = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->select('admin_clients_info.*', 'users.name as created_name')
                ->orderBy('created_name', $sortCreatedBy)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => $rsortCreatedBy,
            'sortDataAdded' => 'desc',
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,

        ]);
    }

    public function adminSortByDataAdded(Request $request)
    {
        $categorys = [];
        $income = [];
        $deduction = [];
        $rolls = [];
        $sortDataAdded = $request->sortDataAdded;
        $full_name = $request->full_name1;
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        $capmpaign_ids = [];
        if ($request->sortDataAdded == "desc") {
            $rsortDataAdded = 'asc';
        } else {
            $rsortDataAdded = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1|| $request->campaigns) {
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
            if ($request->campaigns) {
                $capmpaign_ids = explode(",", $request->campaigns);
            } else {
                $capmpaign_ids = [];
            }

            $clients = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*','users.name as created_name')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->orderBy('created_at', $sortDataAdded)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*','users.name as created_name')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->count();

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_at', $sortDataAdded)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->count();
            } elseif ($sets[0] == 0) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_at', $sortDataAdded)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_at', $sortDataAdded)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('created_at', $sortDataAdded)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } else {
            $clients = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->select('admin_clients_info.*', 'users.name as created_name')
                ->orderBy('created_at', $sortDataAdded)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => $rsortDataAdded,
            'sortLastTouch' => 'desc',
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,
        ]);
    }

    public function adminSortByLastTouch(Request $request)
    {
        $categorys = [];
        $income = [];
        $deduction = [];
        $rolls = [];
        $sortLastTouch = $request->sortLastTouch;
        $full_name = $request->full_name1;
        $capmpaign_ids = [];
        $sets = explode(",", $request->sets);
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        if ($request->sortLastTouch == "desc") {
            $rsortLastTouch = 'asc';
        } else {
            $rsortLastTouch = 'desc';
        }

        if ($request->categorys || $request->income || $request->deduction || $request->start_date1 || $request->end_date1 || $request->campaigns) {
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
            if ($request->campaigns) {
                $capmpaign_ids = explode(",", $request->campaigns);
            } else {
                $capmpaign_ids = [];
            }

            $clients = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*','users.name as created_name')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->orderBy('updated_at', $sortLastTouch)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->leftJoin('multi_capaign', 'admin_clients_info.id', '=', 'multi_capaign.client_id')
                ->select('admin_clients_info.*','users.name as created_name')
                ->distinct()
                ->when($categorys, function ($query, $categorys) {
                    return $query->whereIn('admin_clients_info.category', $categorys);
                })
                ->when($income, function ($query, $income) {
                    return $query->where(function ($query) use ($income) {
                        foreach ($income as $value) {
                            $query->where('admin_clients_info.income_highlights', 'LIKE', "%" . "," . $value . "," . "%");
                        }
                    });
                })
                ->when($deduction, function ($query, $deduction) {
                    return $query->where(function ($query) use ($deduction) {
                        foreach ($deduction as $value) {
                            $query->where('admin_clients_info.deduction_highlights', 'LIKE', "%" . "," . $value . "," . '%');
                        }
                    });
                })
                ->when($start_date, function ($query, $start_date) {
                    return $query->where('admin_clients_info.dob_date', ">=", $start_date);
                })
                ->when($end_date, function ($query, $end_date) {
                    return $query->where('admin_clients_info.dob_date', "<", $end_date);
                })
                ->when($capmpaign_ids, function ($query, $capmpaign_ids) {
                    return $query->whereIn('multi_capaign.campaign_id', $capmpaign_ids);
                })
                ->count();

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } elseif ($full_name) {
            if (count($sets) == 2) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('updated_at', $sortLastTouch)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orWhere('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->count();
            } elseif ($sets[0] == 0) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('updated_at', $sortLastTouch)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->count();
            } elseif ($sets[0] == 1) {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('updated_at', $sortLastTouch)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('client_bio', 'LIKE', "%" . $full_name . '%')
                    ->count();
            } else {
                $clients = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->orderBy('updated_at', $sortLastTouch)
                    ->paginate(100);
                $counters = DB::table('admin_clients_info')
                    ->leftJoin('users', function ($join) {
                        $join->on('admin_clients_info.user_id', '=', 'users.id');
                    })
                    ->select('admin_clients_info.*', 'users.name as created_name')
                    ->where('full_name', 'LIKE', "%" . $full_name . '%')
                    ->count();
            }

            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        } else {
            $clients = DB::table('admin_clients_info')
                ->leftJoin('users', function ($join) {
                    $join->on('admin_clients_info.user_id', '=', 'users.id');
                })
                ->select('admin_clients_info.*', 'users.name as created_name')
                ->orderBy('updated_at', $sortLastTouch)
                ->paginate(100);
            $counters = DB::table('admin_clients_info')
                ->count();
            foreach ($clients as $client) {
                $roll = DB::table('users')
                    ->where('id', '=', $client->user_id)
                    ->pluck('name');
                array_push($rolls, $roll[0]);
            }
        }
        $campaigns = Campaigns::get();
        return view('admin.adminClients', [
            'clients' => $clients,
            'categorys' => DB::table('admin_category')->get(),
            'highlights' => DB::table('admin_highlights')->get(),
            'incomehighlights' => DB::table('admin_income_highlights')->get(),
            'deductionhighlights' => DB::table('admin_deduction_highlights')->get(),
            'selected_categorys' => $categorys,
            'selected_income' => $income,
            'selected_deduction' => $deduction,
            'rolls' => $rolls,
            'sets' => $sets,
            'full_name' => $full_name,
            'counters' => $counters,
            'sortId' => 'desc',
            'sortName' => 'desc',
            'sortPhone' => 'desc',
            'sortCreatedBy' => 'desc',
            'sortDataAdded' => 'desc',
            'sortLastTouch' => $rsortLastTouch,
            'campaigns' => $campaigns,
            'selected_campaigns' => $capmpaign_ids,
        ]);
    }

    
}
