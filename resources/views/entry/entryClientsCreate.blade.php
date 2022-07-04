@extends('layouts.entry')
   
@section('content')
<div class="container py-3 px-5 border-shadow bg-light">
    <form action="{{ route('entry.clients.create.new') }}" enctype='multipart/form-data' method="POST">
        @csrf
        <div class="subtitle">
            <div class="d-flex ">
                <span class="heading-less">
                    <a href="{{route('entry.clients')}}" class="none-decoration"> Clients</a>
                </span>
                <span class="heading-less">  /  </span>
                <span class="heading-less">
                    <a class="none-decoration" href="{{route('entry.clients.create')}}">+ Client</a>
                </span>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-3"><label class="labels">First Name</label><input type="text" class="form-control"  autofocus="autofocus" value="" name="first_name" ></div>
            <div class="col-md-3"><label class="labels">Last Name</label><input type="text" class="form-control" value=""  name="last_name" ></div>
            <div class="col-md-3"><label class="labels">Middle or Other name</label><input type="text" class="form-control" value=""  name="middle_name" ></div>
            <div class="col-md-3"><label class="labels">Date of Birth</label><input type="date" class="form-control" value=""  name="DOB" ></div>
        </div>
        <div class="mt-3 row">
            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Categories</h5>
                <div class="d-block">
                    @foreach ($categorys as $category)
                        <div class="form-check ml-4">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="categorys"  value=<?php echo $category->name?>> {{$category->name}}
                            </label>
                        </div>
                    @endforeach
                </div> 
            </div>
            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Bar Code</h5>
                <div class="block">
                    <input type="text" class="form-control" value=""  name="bs_code" >
                </div>
            </div>

            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Email Address</h5>
                <div class="block">
                    <input type="text" class="form-control" value=""  name="email" >
                </div>
            </div>
            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Citizenship</h5>
                <select id="country" class="form-control" name="citizenship">
                    @foreach ($countries as $country)
                        <option value="{{ $country->country_code}}"> {{ $country->country_name}} </option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-3"><label class="labels">Primary Phone</label><input type="text" class="form-control"  value="" name="primary_phone" ></div>
            <div class="col-md-3"><label class="labels">Work or Other Phone</label><input type="text" class="form-control" value=""  name="other_phone"></div>
            <div class="col-md-3"><label class="labels">Address1</label><input type="text" class="form-control" value=""  name="address1" ></div>
            <div class="col-md-3"><label class="labels">Address2</label><input type="text" class="form-control" value=""  name="address2" ></div>
            
        </div>
        <div class="mt-3">
            <label class="labels">CampaignID</label>
            <select class="js-example-basic-multiple" name="campaigns[]" multiple="multiple">
                @foreach ($campaigns as $campaign)
                    <option value={{$campaign->id}}>{{ $campaign->campaign_name }}</option>
                @endforeach
            </select>
        </div>

        <div class="mt-3">
            <h5 class="d-inline mr-auto">Income Highlights</h5>
            <div class="row">
                @foreach ($incomehighlights as $incomehighlight)
                    <div class="col-md-3 form-check ml-5 mb-2">
                        <label class="form-check-label ">
                            <input class="form-check-input checkbox-style" type="checkbox" name="income[]" value=<?php echo $incomehighlight->id?> > {{$incomehighlight->name}}
                        </label>
                        <div class="d-none">
                            <input type="text" class="salary-input" placeholder="Income in CAD" name="amount[]" pattern="^[\d,]+$">
                            <input type="text" class="year" name="year[]" value=<?php echo date("Y"); ?>>
                        </div>
                    </div>
                @endforeach
                
            </div>    
        </div>

        <div class="mt-3">
            <h5 class="d-inline mr-auto">Deduction Highlights</h5>
            <div class="row">
                @foreach ($deductionhighlights as $deductionhighlight)
                    <div class="col-md-4 form-check ml-5 mb-2">
                        <label class="form-check-label">
                            <input class="form-check-input checkbox-style" type="checkbox" name="deductions[]" value=<?php echo $deductionhighlight->id?> > {{$deductionhighlight->name}}
                        </label>
                        <div class="d-none">
                            <input type="text" class="salary-input" placeholder="Deduction in CAD" name="Damount[]" pattern="^[\d,]+$">
                            <input type="text" class="year" name="Dyear[]" value=<?php echo date("Y"); ?>>
                        </div>
                    </div>
                @endforeach
            </div>    
        </div>
        <div class="row mt-3">
            <div class="col-md-6">
                <h5 class="d-inline mr-auto">Are there any Dependents?</h5>
                <div class="ml-4">
                    <select name="dependents" id="dependents"  style="width:100px;border: 1px solid #ced4da;border-radius: 0.25rem;">
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                    <div class="link-id ml-2">
                        <a class="p-0 btn btn-default ml-auto mr-0 add-row" id="profile_insert"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add one more Dependent</a>
                        <div class="row group-input">
                            <div class="col-md-12">
                                <label class="labels">Input Dependents name</label>
                                <select class="js-example-basic-multiple" name="profile_numbers[]" multiple="multiple">
                                    @foreach ($clients as $client)
                                        <option value={{$client->id}}>{{ $client->full_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h5 class="d-inline mr-auto">Spouse?</h5>
                <div class="ml-4">
                    <select name="spouse" id="spouse"  style="width:100px;border: 1px solid #ced4da;border-radius: 0.25rem;">
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                    <div class="link-spouse ml-2">
                        <a class="p-0 btn btn-default ml-auto mr-0 add-row invisible" id="profile_insert"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add one more Dependent</a>
                        <div class="row">
                            <div class="col-md-12">
                                <label class="labels">Input Spouse name</label>
                                <select class="js-example-basic-multiple" name="spouse_id">
                                    
                                    @foreach ($clients as $client)
                                        <option value={{$client->id}}>{{ $client->full_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <h5 class="mt-3">Housing Situation</h5>
        <div class="row ">
            <div class="col-md-6">
                <div class="ml-4">
                    <p class="mb-0">Did the client sell their principal residence last year?</p>
                    <div class="ml-2">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="residence_radio" value="yes">Yes
                            </label>
                        </div>
                        <div class="form-check disabled">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="residence_radio" value="no">No
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="ml-4">
                    <p class="mb-0">House is their own or rent?</p>
                    <div class="ml-2">
                        <div class="form-check ">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="house_own_status" value="own">Own
                            </label>
                            <div class="d-none tax_input">
                                <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                <input type="number" style="width:160px" name="tax_fee"><span class="ml-1">CAD</span>
                            </div>
                        </div>
                        <div class="form-check ">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="house_own_status"  value="rent">Rent
                            </label>
                            <div class="d-none rent_input">
                                <p class="pb-0">How much rent did the client pay in the last year?</p>
                                <input type="number" style="width:160px" name="rent_fee"><span class="ml-1">CAD</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-3">
            <h5 class="d-inline mr-auto">Attached Documents</h5>
            <div class="ml-4">
                <input type='file' name='file'>
            </div>

        </div>
        <div class="mt-5">
            <div class="d-flex">
                <input type="reset" value="Reset" class="ml-auto mr-3 px-2">
                <input type="submit" value="Submit" class="btn btn-success mr-0">
            </div>    
        </div>
        
    </form>
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
    })
</script>
@endsection