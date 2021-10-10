@extends('layouts.bookkeeper')
   
@section('content')

<div class="container py-3 px-5 border-shadow bg-light">
    <form action="{{ route('bookkeeper.clients.create.new') }}" enctype='multipart/form-data' method="POST">
        @csrf
        <div class="subtitle">
            <div class="d-flex ">
                <span class="font-weight-bold py-2"><h5 class="d-inline">Clients</h5><h5 class="d-inline"> / </h5><h5 class="d-inline">+Client</h5></span>
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
               
        </div>

        <div class="row mt-3">
            <div class="col-md-3"><label class="labels">Primary Phone</label><input type="text" class="form-control"  value="" name="primary_phone" ></div>
            <div class="col-md-3"><label class="labels">Other Phone</label><input type="text" class="form-control" value=""  name="other_phone"></div>
            <div class="col-md-3"><label class="labels">Address</label><input type="text" class="form-control" value=""  name="address" ></div>
            <div class="col-md-3"><label class="labels">Citizenship</label><input type="text" class="form-control" value=""  name="citizenship" ></div>
        </div>

        <div class="mt-3">
            <h5 class="d-inline mr-auto">Income Highlights</h5>
            <div class="row">
                @foreach ($incomehighlights as $incomehighlight)
                    <div class="col-md-3 form-check ml-5 mb-2">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="income[]" value=<?php echo $incomehighlight->id?> > {{$incomehighlight->name}}
                        </label>
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
                            <input class="form-check-input" type="checkbox" name="deductions[]" value=<?php echo $deductionhighlight->id?> > {{$deductionhighlight->name}}
                        </label>
                    </div>
                @endforeach
            </div>    
        </div>
        <div class="mt-3">
            <h5 class="d-inline mr-auto">Dependents?</h5>
            <div class="ml-4">
                <select name="dependents" id="dependents"  style="width:100px;border: 1px solid #ced4da;border-radius: 0.25rem;">
                    <option value="No">No</option>
                    <option value="Yes">Yes</option>
                </select>
                <div class="link-id ml-2">
                    <a class="btn btn-default ml-auto mr-0 add-row" id="profile_insert"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add one more Dependent</a>
                    <div class="row group-input">
                        <div class="col-md-3">
                            <label class="labels">Input Dependents name</label>
                            <input type="text" class="form-control user_dependent_input" vlaue="" name="dependent" id="dependent_input" autocomplete="off">
                            <input type="hidden" name="profile_numbers[]" id="profile_numbers">
                            <div id="countryList"></div>
                        </div>
                    </div>
                        
                    
                </div>
            </div>
                
        </div>
        <div class="mt-3">
            <h5 class="d-inline mr-auto">Attached Documents</h5>
            <div class="ml-4">
                <!-- <input type="file" id="file" name="file"> -->
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


@endsection