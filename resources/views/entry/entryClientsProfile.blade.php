@extends('layouts.entry')
   
@section('content')

<?php 
    
    $str_arr = explode (",", $info->income_highlights);
    $str_arr1 = explode (",", $info->deduction_highlights);
?>
<div class="container-fluid py-3 px-4">
    <div class="row">
        <div class="col-sm-4">
            <div class="bg-light px-4 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <div class="ml-1">
                    <i class='fas fa-fingerprint' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                    <h5 class="d-inline-block ml-1">
                        Information
                    </h5>
                </div>
                <div class="radius-border pt-2 px-1">
                    <div class="w-100 d-block text-right">
                        <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i></a>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Full Name:</label>
                        <p class="d-inline ml-3">{{$info->first_name}} {{$info->middle_name}} {{$info->last_name}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border ">Date of Birth:</label>
                        @if ($info->dob_date)
                            <p class="d-inline ml-3">{{date("m/d/Y", strtotime($info->dob_date))}}</p>
                        @endif
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border ">Date of Death:</label>
                        <!-- <p>{{$info->dod_date}}</p> -->
                        @if ($info->dod_date)
                            <p class="d-inline ml-3">{{date("m/d/Y", strtotime($info->dod_date))}}</p>
                        @endif
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Address1:</label>
                        <p class="d-inline ml-3">{{$info->address1}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Address2:</label>
                        <p class="d-inline ml-3">{{$info->address2}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border ">Phone:</label>
                        <p class="d-inline ml-3">{{$info->primary_phone}}</p>
                    </div>    
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Work Phone:</label>
                        <p class="d-inline ml-3">{{$info->other_phone}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">SIN:</label>
                        <p class="d-inline ml-3"> {{$info->sin}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Bar Code:</label>
                        <p class="d-inline ml-3"> {{$info->bs_code}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Citizenship:</label>
                        
                        <img src="{{ asset('/img/flags/4^3/'.strtolower($info->citizenship).'.svg')}}" class="image-style ml-3" alt="">
                        <p class="d-inline ml-1">{{$info->citizenship}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Marital Status:</label>
                        <p class="d-inline ml-3">{{$info->marital_status}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Home Status:</label>
                        <p class="d-inline ml-3">{{$info->home_status}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Category:</label>
                        <p class="d-inline ml-3">{{$info->category}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">CampaignID:</label>
                        <p class="d-inline ml-3">{{$info->campaign_id}}</p>
                    </div>
                    <a id="page_id" data-id='{{$info->id}}'></a>
                </div>
                <h5 class="mt-3 ml-4">
                    Update Logs
                </h5>
                <div class="radius-border px-3 pb-4 pt-2">
                    @foreach ($logs as $log)
                        <div>
                            <label for="fname" class="my-2 label-style ">{{$log->created_at}} : </label>
                            <p class="d-inline ml-3">{{$log->content}}</p>
                        </div>
                    @endforeach
                </div>
                <h5 class="mt-3 ml-4">
                    Additional Notes
                </h5>
                <div class="radius-border px-3 pb-4 pt-2">
                    <div class="w-100 d-block text-right">
                        <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#bio"></i></a>
                    </div>
                    
                    <?php echo $info->notes ?>
                    
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h5 class="mt-3 ml-4">
                            Dependents
                        </h5>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit_dependents"></i></a>
                            </div>
                            @foreach ($fullname as $parameter)
                                @if ($parameter != null)
                                    <div id=<?php echo "dependent_id".$parameter->id ?>><a href=<?php echo route('entry.clients.profile',['id' => $parameter->id])?>>{{$parameter->first_name}} {{$parameter->middle_name}} {{$parameter->last_name}}</a></div>
                                @endif
                            @endforeach
                        </div>

                    </div>
                    <div class="col-md-6">
                        <h5 class="mt-3 ml-4">
                            Spouse
                        </h5>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#eidt_spouse"></i></a>
                            </div>
                            @if ($spouse != null)
                                <div><a href=<?php echo route('entry.clients.profile',['id' => $spouse->id])?>>{{$spouse->full_name}}</a></div>
                            @endif
                        </div>
                        
                    </div>
                </div>
                        
            </div>
        </div>
        <div class="col-sm-8"> 
            <div class="bg-light px-4 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <div class="row">
                    <div class="col-md-6">
                        <div class="ml-1">
                            <i class='fas fa-hands-helping' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                            <h5 class="d-inline-block ml-1">
                                Sources of Income
                            </h5>
                        </div>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#income"></i></a>
                            </div>
                            <div class="d-block">
                                @foreach ($incomehighlights as $income)
                                    @if (in_array($income->id, $str_arr))
                                        <div class="d-inline-block form-check w-49">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="income[]" checked value=<?php echo $income->name?> onclick="return false;"/> {{$income->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="d-inline-block form-check w-49">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="income[]"  value=<?php echo $income->name?> disabled> {{$income->name}}
                                            </label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>  
                        </div>
                        <div class="mt-3 ml-3">
                            <h5 class="d-inline-block ml-1">
                                Property Information
                            </h5>
                        </div>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit_property"></i></a>
                            </div>
                            <div class="d-block">
                                    @if ($info->resident != null)
                                            <p class="mb-0"> <i class="far fa-circle"></i> Did the client sell their principal residence last year?</p> 
                                            <div class="ml-5 block">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="deductions[]" checked value='yes' onclick="return false;"> {{$info->resident}}
                                                </label>
                                            </div>
                                    @endif
                                    @if ($info->home_own_status != null)
                                            <p class="mb-0"><i class="far fa-circle"></i> Does the client own or rent?</p> 
                                            <div class="ml-5 block">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="deductions[]" checked value='yes' onclick="return false;"> {{$info->home_own_status}}
                                                </label>
                                                @if ($info->home_own_status == 'rent')
                                                    <div class="ml-3">
                                                        <p class="mb-0">How much rent did the client pay in the last year?</p>
                                                        <p class="mx-2">{{$info->rent_fee}} CAD</p>
                                                    </div>
                                                @endif
                                                @if ($info->home_own_status == 'own')
                                                    <div class="ml-3">
                                                        <p class="mb-0"> How much property taxes did the client pay in the last year?</p>
                                                        <p class="mx-2">{{$info->home_tax_fee}} CAD</p>
                                                    </div>
                                                @endif
                                            </div>
                                    @endif
                            </div>  
                        </div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="ml-1">
                            <i class='fas fa-piggy-bank' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                            <h5 class="d-inline-block ml-1">
                                Sources of Deduction
                            </h5>
                        </div>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#deduction"></i></a>
                            </div>
                            <div class="d-block">
                                @foreach ($deductionhighlights as $deduction)
                                    
                                    @if (in_array($deduction->id, $str_arr1))
                                        <div class="d-block form-check ">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="deductions[]" checked value='{{$deduction->name}}' onclick="return false;"> {{$deduction->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="d-block form-check ">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="deductions[]"  value='{{$deduction->name}}' disabled> {{$deduction->name}}
                                            </label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>  
                        </div>
                    </div>
                    
                </div>
                <div class="mt-2">
                    <div class="ml-1">
                        <!-- <img class="d-flex" src="{{ asset('/img/shield-virus-solid.svg')}}" style="fill:green;width:24px;"></img> -->
                        <i class='fas fa-shield-virus' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                        <h5 class="d-inline-block ml-1">
                            Insurance Products
                        </h5>
                    </div>
                    <div class="radius-border px-3 pb-4 pt-2">
                        <div class="w-100 d-block text-right">
                            <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#product"></i></a>
                        </div>
                        <div class="d-block">
                            @foreach ($products as $product)
                                <span>{{ $product->product_name }}</span><span>,</span>
                            @endforeach
                        </div>  
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="edit">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Information</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.information.edit') }}">
                        <div class="form-group ">
                            <div style="margin:auto;width:75%">
                                <div>
                                    <label for="fname" class="my-2 label-style">First Name:</label>
                                    <input type="text" id="fname" name="first_name" class="mb-1 full-width-style" value={{$info->first_name}} >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style ">Last Name:</label>
                                    <input type="text" id="lname" name="last_name" class="mb-1 full-width-style" value={{$info->last_name}}>
                                </div>    
                                <div>
                                    <label for="fname" class="my-2 label-style">Date of Birth:</label>
                                    <input type="date" id="birthday" name="dob_date" class="mb-1 full-width-style" value={{$info->dob_date}}>
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Date of Death:</label>
                                    <input type="date" id="birthday" name="dod_date" class="mb-1 full-width-style" value={{$info->dod_date}}>
                                </div>

                                <div>
                                    <label for="fname" class="my-2 label-style">Address1:</label>
                                    <input type="text" id="address" name="address1" class="mb-1 full-width-style " value= "{{$info->address1}}" >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Address2:</label>
                                    <input type="text" id="address" name="address2" class="mb-1 full-width-style " value= "{{$info->address2}}" >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style ">Phone:</label>
                                    <input type="text" id="phone" name="phone" class="mb-1 full-width-style" value="{{$info->primary_phone}}">
                                </div>    
                                <div>
                                    <label for="fname" class="my-2 label-style">Work Phone:</label>
                                    <input type="text" id="other_phone" name="other_phone" class="mb-1 full-width-style" value="{{$info->other_phone}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Email Address</label>
                                    <input type="text" id="sin" name="email" class="mb-1 full-width-style" value="{{$info->email}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Bar code</label>
                                    <input type="text" id="sin" name="bs_code" class="mb-1 full-width-style" value="{{$info->bs_code}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Citizenship:</label>
                                    <select id="country" class="mb-1 full-width-style" name="citizenship">
                                        @foreach ($countries as $country)
                                            <option value="{{ $country->country_code }}"<?php if ($info->citizenship == $country->country_code) echo ' selected="selected"'; ?>>{{$country->country_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Marital Status:</label>
                                    <input type="text" id="marital_status" name="marital_status" class="mb-1 full-width-style" value="{{$info->marital_status}}">
                                </div>
                                
                                <div>
                                    <label for="fname" class="my-2 label-style">Home Status:</label>
                                    <input type="text" id="home_status" name="home_status" class="mb-1 full-width-style" value="{{$info->home_status}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Notes:</label>
                                    <input type="text" id="notes" name="notes" class="mb-1 full-width-style" value="{{$info->notes}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Category:</label>
                                    <select name="category" id="" class="mb-1 full-width-style" >
                                        @foreach ($categories  as $category)
                                            <option value="{{ $category->name }}"<?php if ($info->category == $category->name) echo ' selected="selected"'; ?>>{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                    
                                </div>
                                <label for="fname" class="my-2 label-style">CampaignID:</label>
                                <div>
                                    <select class="js-example-basic-multiple" name="campaigns[]" multiple="multiple">
                                        @foreach ($campaigns as $campaign)
                                            @if (in_array($campaign->id, $selected_campaigns))
                                                <option value={{$campaign->id}} selected="selected">{{ $campaign->campaign_name }}</option>
                                            @else
                                                <option value={{$campaign->id}}>{{ $campaign->campaign_name }}</option>
                                            @endif
                                        @endforeach
                                    </select> 
                                </div>
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value= '{{$info->id}}'>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="bio">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Additional Notes</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.notes.edit') }}">
                        <div class="form-group ">
                            <textarea id="mytextarea" name="notes" rows="4"  class="w-100">{{$info->notes}}</textarea>
                        </div>
                        
                        <input type="hidden" name="id" id="id" value='{{$info->id}}'>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="income">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Sources of Incomehighlights</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.income.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                                <div class="d-block">
                                    @foreach ($incomes as $income)
                                        @if ($income->checked)
                                            <div class="d-inline-block form-check w-49">
                                                <label class="form-check-label">
                                                    <input class="form-check-input checkbox-style" type="checkbox" name="income[]" checked value=<?php echo $income->id?> > {{$income->name}}
                                                </label>
                                                @if ($income->Amount)
                                                    <div class="">
                                                        <input type="text" class="salary-input" placeholder="Income in CAD" name="amount[]" pattern="^[\d,]+$" value='{{$income->Amount}}'>
                                                        <input type="text" class="year" name="year[]" value='{{$income->DYear}}'>
                                                        <input type="hidden" name="check[]" value="1">
                                                    </div>
                                                @else
                                                    <div class="">
                                                        <input type="text" class="salary-input" placeholder="Income in CAD" name="amount[]" pattern="^[\d,]+$" value='{{$income->Amount}}'>
                                                        <input type="text" class="year" name="year[]" value='{{date("Y")}}'>
                                                        <input type="hidden" name="check[]" value="1">
                                                    </div>
                                                @endif
                                            </div>
                                        @else
                                            <div class="d-inline-block form-check w-49">
                                                <label class="form-check-label">
                                                    <input class="form-check-input checkbox-style" type="checkbox" name="income[]"  value=<?php echo $income->id?> > {{$income->name}}
                                                </label>
                                                <div class="d-none">
                                                    <input type="text" class="salary-input" placeholder="Income in CAD" name="amount[]" pattern="^[\d,]+$">
                                                    <input type="text" class="year" name="year[]" value=<?php echo date("Y"); ?>>
                                                    <input type="hidden" name="check[]" value="0">
                                                </div>
                                            </div>
                                        @endif
                                        <br>
                                    @endforeach
                                </div>  
                                
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value='{{$info->id}}'>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="deduction">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Sources of Deduction Highlights</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.deduction.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                                <div class="d-block">
                                    @foreach ($deductions as $deduction)
                                        @if (in_array($deduction->id, $str_arr1))
                                            <div class="d-block form-check ">
                                                <label class="form-check-label">
                                                    <input class="form-check-input checkbox-style" type="checkbox" name="deductions[]" checked value='{{$deduction->id}}' > {{$deduction->name}}
                                                </label>
                                                @if ($deduction->Amount)
                                                    <div class="">
                                                        <input type="text" class="salary-input" placeholder="Deduction in CAD" name="Damount[]" pattern="^[\d,]+$" value='{{$deduction->Amount}}' >
                                                        <input type="text" class="year" name="Dyear[]" value='{{$deduction->DYear}}'>
                                                        <input type="hidden" name="check[]" value="1">
                                                    </div>
                                                @else
                                                    <div class="">
                                                        <input type="text" class="salary-input" placeholder="Deduction in CAD" name="Damount[]" pattern="^[\d,]+$" value='{{$deduction->Amount}}' >
                                                        <input type="text" class="year" name="Dyear[]" value='{{date("Y")}}'>
                                                        <input type="hidden" name="check[]" value="1">
                                                    </div>
                                                @endif
                                                
                                            </div>
                                        @else
                                            <div class="d-block form-check ">
                                                <label class="form-check-label">
                                                    <input class="form-check-input checkbox-style" type="checkbox" name="deductions[]"  value='{{$deduction->id}}' > {{$deduction->name}}
                                                </label>
                                                <div class="d-none">
                                                    <input type="text" class="salary-input" placeholder="Deduction in CAD" name="Damount[]" pattern="^[\d,]+$">
                                                    <input type="text" class="year" name="Dyear[]" value=<?php echo date("Y"); ?>>
                                                    <input type="hidden" name="check[]" value="0">
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>  
                                
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value='{{$info->id}}'>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
                
                
                
                
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit_dependents">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Dependents</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.dependents.edit') }}">
                        <div class="form-group ">
                            <div>
                                <select class="js-example-basic-multiple" name="profile_numbers[]" multiple="multiple">
                                    @foreach ($clients as $client)
                                        @if (in_array($client->id, $ids))
                                            <option value={{$client->id}} selected="selected">{{ $client->full_name }}</option>
                                        @else
                                            <option value={{$client->id}}>{{ $client->full_name }}</option>
                                        @endif
                                    @endforeach
                                </select> 
                            </div>
                        </div>
                        <div class="d-flex">
                            <input type="hidden" name="id" id="id" value="{{$info->id}}">
                            <button type="submit" class="btn btn-primary ml-auto mr-0">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="eidt_spouse">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Spouse</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.spouse.edit') }}">
                        <div class="form-group ">
                            <label for="fname" class="my-2 label-style">Spouse Name :</label>
                            <select class="js-example-basic-single" name="spouse">
                                @foreach ($clients as $client)
                                    @if($spouse)
                                        @if ($client->id == $spouse->id)
                                            <option value={{$client->id}} selected="selected">{{ $client->full_name }}</option>
                                        @else
                                            <option value={{$client->id}}>{{ $client->full_name }}</option>
                                        @endif
                                    @else
                                        <option value={{$client->id}}>{{ $client->full_name }}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="d-flex">
                            <input type="hidden" name="id" id="id" value="{{$info->id}}">
                            <button type="submit" class="btn btn-primary ml-auto mr-0">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit_property">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Property of Home</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('entry.home_property.edit') }}">
                        <div class="form-group ">
                            <div class="row ">
                                <div class="col-md-6">
                                    <div class="ml-4">
                                        <p class="mb-0">Did the client sell their principal residence last year?</p>
                                        <div class="ml-2">
                                            @if ($info->resident === "yes")
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" value="yes" checked>Yes
                                                    </label>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" value="no">No
                                                    </label>
                                                </div>
                                            @elseif($info->resident === "no")
                                                
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" value="yes">Yes
                                                    </label>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" checked value="no">No
                                                    </label>
                                                </div>
                                            @elseif($info->resident == null)
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio"  value="yes" >Yes
                                                    </label>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio"  value="no">No
                                                    </label>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="ml-4">
                                        <p class="mb-0">House is their own or rent?</p>
                                        <div class="ml-2">
                                            @if ($info->home_own_status == 'own')
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" checked value="own">Own
                                                    </label>
                                                    <div class="tax_input">
                                                        <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="tax_fee" value='{{ $info->home_tax_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" value="rent">Rent
                                                    </label>
                                                    <div class="d-none rent_input">
                                                        <p class="pb-0">How much rent did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="rent_fee" value='{{$info->rent_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                            @elseif($info->home_own_status == 'rent')
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" value="own">Own
                                                    </label>
                                                    <div class="d-none tax_input">
                                                        <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="tax_fee" value='{{ $info->home_tax_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status"  checked value="rent">Rent
                                                    </label>
                                                    <div class="rent_input">
                                                        <p class="pb-0">How much rent did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="rent_fee" value='{{$info->rent_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                            @elseif($info->home_own_status == null)
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" value="own">Own
                                                    </label>
                                                    <div class="d-none tax_input">
                                                        <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="tax_fee"><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status"  value="rent">Rent
                                                    </label>
                                                    <div class="d-none rent_input">
                                                        <p class="pb-0">How much rent did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="rent_fee" ><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="id" id="id" value="{{$info->id}}">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="product">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit your Insurance Products</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{route('entry.product.edit')}}">
                        @csrf
                        <div class="form-group ">
                            <div class="input-field">
                                <div class="d-block insurance-products">
                                    @foreach ($products as $product)
                                        <div class="m-1">
                                            <input type="text" placeholder="Product name" name="products[]"  value='{{ $product->product_name }}'>
                                            <input type="hidden"  name="product_ids[]"  value='{{ $product->id }}'>
                                            <a class="pl-1"><i class="fa fa-trash" aria-hidden="true" delete-id="{{ $product->id }}"></i></a>
                                        </div>
                                    @endforeach
                                </div>  
                            </div>
                        </div>
                        <input type="hidden" name="id" id="id" value={{$info->id}}>
                        <div class="row">
                            <a class="btn btn-default ml-auto mr-0 add-product"><i class="fa fa-plus"></i>&nbsp;&nbsp; Create New Product</a>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function(event) { 
        tinymce.init({
            selector: '#mytextarea'
        });
        $('.js-example-basic-single').select2();
        $('.js-example-basic-multiple').select2();
        setTimeout(function() {
            $('.js-example-basic-multiple').next('span').addClass('w-100');
            $('.js-example-basic-single').next('span').addClass('w-50');
        }, 1000);
    });
    
</script>
@endsection