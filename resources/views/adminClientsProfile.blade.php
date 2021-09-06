@extends('layouts.app')
   
@section('content')
<div class="container-fluid py-3 px-4">
    <div class="row">
        <div class="col-sm-3">
            <div class="bg-light px-4 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <h5 class="ml-4">
                    Information
                </h5>
                <div class="radius-border pt-2 px-1">
                    <div class="w-100 d-block text-right">
                        <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i></a>
                    </div>
                    <div>
                        <label for="fname" class="my-2 left-style right-border">Full Name:</label>
                        <p class="d-inline ml-3">{{$info->first_name}} {{$info->middle_name}} {{$info->last_name}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 left-style right-border ">Date of Birth:</label>
                        <p class="d-inline ml-3">{{$info->dob_date}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 left-style right-border">Last Update:</label>
                        <p class="d-inline ml-3">{{$info->updated_at}}</p>
                    </div>
                    <a id="page_id" data-id={{$info->id}}></a>
                    <!-- <div class="col-md-5 pl-3 pb-4">
                        <p class="right-border">Full name</p>
                        <p class="right-border">Date of Birth</p>
                        <p class="right-border">Last Update</p>
                    </div>
                    
                    <div class="col-md-7 px-4 pb-4">
                        
                        <p>{{$info->first_name}} {{$info->last_name}}</p>
                        <p>{{$info->birthday}}</p>
                        <p>{{$info->updated_at}}</p>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="col-sm-9"> 
            <div class="bg-light px-4 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <div class="row">
                    <div class="col-md-5">
                        <h5 class="ml-4">
                            Client Bio
                        </h5>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#bio"></i></a>
                            </div>
                            {{$info->client_bio}}
                        </div>
                    </div>
                    <div class="col-md-7">
                        <h5 class="ml-4">
                            Additional Information
                        </h5>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#add_info"></i></a>
                            </div>
                            <!-- <div class="row">
                                <div class="col-md-3">
                                    <p class="right-border">Adderess</p>
                                    <p class="right-border">Phone</p>
                                    <p class="right-border">Business Phone</p>
                                    <p class="right-border">SIN</p>
                                    <p class="right-border">Citizenship</p>
                                    <p class="right-border">Marital status</p>
                                    <p class="right-border">Dependents</p>
                                    <p class="right-border">Home Status</p>
                                    <p class="right-border">Notes</p>
                                </div>
                                <div class="col-md-9">
                                    <p>{{$info->address}}</p>
                                    <p>{{$info->primary_phone}}</p>
                                    <p>{{$info->other_phone}}</p>
                                    <p>{{$info->sin}}</p>
                                    <p>{{$info->citizenship}}</p>
                                    <p>{{$info->marital_status}}</p>
                                    <p>{{$info->dependents}}</p>
                                    <p>{{$info->home_status}}</p>
                                    <p>{{$info->notes}}</p>
                                </div>
                            </div> -->
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Address:</label>
                                <p class="d-inline ml-3">{{$info->address}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border ">Phone:</label>
                                <p class="d-inline ml-3">{{$info->primary_phone}}</p>
                            </div>    
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Business Phone:</label>
                                <p class="d-inline ml-3">{{$info->other_phone}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border">SIN:</label>
                                <p class="d-inline ml-3"> {{$info->sin}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Citizenship:</label>
                                <p class="d-inline ml-3">{{$info->citizenship}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Marital Status:</label>
                                <p class="d-inline ml-3">{{$info->marital_status}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Dependents:</label>
                                <p class="d-inline ml-3">{{$info->dependents}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Home Status:</label>
                                <p class="d-inline ml-3">{{$info->home_status}}</p>
                            </div>
                            <div>
                                <label for="fname" class="my-2 label-style right-border">Notes:</label>
                                <p class="d-inline ml-3">{{$info->notes}}</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="px-5 py-5">
                    <h5 class="ml-5 mb-3">
                        Opportunities
                    </h5>
                    <div class="double-border row py-2">
                        <div class="col-4">
                            <h5 class="text-right mb-3">
                                Seg Funds Invester
                            </h5>
                        </div>
                        <div class="col-4">
                            We are going to have a formula that calculates the potential of an investment deal 
                            according to a formula that uses the client's information already entered.
                        </div>
                        <div class="col-4">
                            <h5>Formula:</h5>
                            (Total Dollar Amt for T3) + (Total dollar Amt for T5) for most recent tax return / Months left to die = a number that will allow 
                            us to screen for annuity contract apps.
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
                    <form action="{{ route('admin.information.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">

                                <div>
                                    <label for="fname" class="my-2 label-style">First Name:</label>
                                    <input type="text" id="fname" name="first_name" class="mb-1 w-50" value={{$info->first_name}} >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style ">Last Name:</label>
                                    <input type="text" id="lname" name="last_name" class="mb-1 w-50" value={{$info->last_name}}>
                                </div>    
                                <div>
                                    <label for="fname" class="my-2 label-style">Date of Birth:</label>
                                    <input type="date" id="birthday" name="dob_date" class="mb-1 w-50" value={{$info->dob_date}}>
                                </div>
                                <!-- <div>
                                    <label for="fname" class="my-2 label-style">Last Update:</label>
                                    <input type="text" id="last_update" name="last_update" class="mb-1 w-50">
                                </div> -->
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value= 15>
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
                    <h4 class="modal-title">Edit Bio</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.bio.edit') }}">
                        <div class="form-group ">
                            <textarea id="bio" name="bio" rows="4" cols="200" class="w-100">{{$info->client_bio}}
                            </textarea>
                        </div>
                        
                        <input type="hidden" name="id" id="id" value={{$info->id}}>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="add_info">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Additional Information</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.add.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                            
                                <div>
                                    <label for="fname" class="my-2 label-style">Address:</label>
                                    <input type="text" id="address" name="address" class="mb-1 w-50 " value= "{{$info->address}}" >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style ">Phone:</label>
                                    <input type="text" id="phone" name="phone" class="mb-1 w-50" value="{{$info->primary_phone}}">
                                </div>    
                                <div>
                                    <label for="fname" class="my-2 label-style">Business Phone:</label>
                                    <input type="text" id="other_phone" name="other_phone" class="mb-1 w-50" value="{{$info->other_phone}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">SIN:</label>
                                    <input type="text" id="sin" name="sin" class="mb-1 w-50" value="{{$info->sin}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Citizenship:</label>
                                    <input type="text" id="citizenship" name="citizenship" class="mb-1 w-50" value="{{$info->citizenship}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Marital Status:</label>
                                    <input type="text" id="marital_status" name="marital_status" class="mb-1 w-50" value="{{$info->marital_status}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Dependents:</label>
                                    <input type="text" id="dependents" name="dependents" class="mb-1 w-50" value="{{$info->dependents}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Home Status:</label>
                                    <input type="text" id="home_status" name="home_status" class="mb-1 w-50" value="{{$info->home_status}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Notes:</label>
                                    <input type="text" id="notes" name="notes" class="mb-1 w-50" value="{{$info->notes}}">
                                </div>
                                
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value={{$info->id}}>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
                
                
                
                
            </div>
        </div>
    </div>
</div>

@endsection