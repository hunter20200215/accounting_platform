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
            <div class="col-md-3"><label class="labels">First Name</label><input type="text" class="form-control"  value="" name="first_name" required></div>
            <div class="col-md-3"><label class="labels">Last Name</label><input type="text" class="form-control" value=""  name="last_name" required></div>
            <div class="col-md-3"><label class="labels">Middle or Other name</label><input type="text" class="form-control" value=""  name="middle_name" ></div>
            <div class="col-md-3"><label class="labels">Date of Birth</label><input type="date" class="form-control" value=""  name="DOB" required></div>
        </div>
        <div class="mt-3">
            <h6 class="d-inline mr-auto">Categories</h6>
            <div class="d-block">
                @foreach ($categorys as $category)
                    <div class="form-check ml-4">
                        <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="categorys" required value=<?php echo $category->name?>> {{$category->name}}
                        </label>
                    </div>
                @endforeach
            </div>    
        </div>

        <div class="row mt-3">
            <div class="col-md-3"><label class="labels">Primary Phone</label><input type="text" class="form-control"  value="" name="primary_phone" required></div>
            <div class="col-md-3"><label class="labels">Other Phone</label><input type="text" class="form-control" value=""  name="other_phone"></div>
            <div class="col-md-3"><label class="labels">Address</label><input type="text" class="form-control" value=""  name="address" required></div>
            <div class="col-md-3"><label class="labels">Citizenship</label><input type="text" class="form-control" value=""  name="citizenship" required></div>
        </div>

        <div class="mt-3">
            <h6 class="d-inline mr-auto">Income Highlights</h6>
            <div class="row">
                @foreach ($incomehighlights as $incomehighlight)
                    <div class="col-md-3 form-check ml-5 mb-2">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="income[]" value=<?php echo $incomehighlight->name?> > {{$incomehighlight->name}}
                        </label>
                    </div>
                @endforeach
                
            </div>    
        </div>

        <div class="mt-3">
            <h6 class="d-inline mr-auto">Deduction Highlights</h6>
            <div class="row">
                @foreach ($deductionhighlights as $deductionhighlight)
                    <div class="col-md-3 form-check ml-5 mb-2">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="deductions[]" value=<?php echo $deductionhighlight->name?> > {{$deductionhighlight->name}}
                        </label>
                    </div>
                @endforeach
                
            </div>    
        </div>
        <div class="mt-3">
            <h6 class="d-inline mr-auto">Attached Documents</h6>
            <div class="ml-3">
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