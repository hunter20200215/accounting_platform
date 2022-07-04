@extends('layouts.app')
   
@section('content')
<div class="container">
    <div class="subtitle">
        <div class="d-flex ">
            <span class="bg-light px-4 py-2 border-shadow"><h5 class="d-inline">Settings</h5><h5 class="d-inline"> / </h5><h5 class="d-inline">Carriers</h5></span>
        </div>
    </div>
    <div class="my-5"></div>
    <div class="row">
        <button class="btn btn-default ml-auto mr-0 add-row" data-toggle="modal" data-target="#create"><i class="fa fa-plus"></i>&nbsp;&nbsp; Make New Carrier</button>
    </div>
    <div class="bg-light px-4 pt-5 border-shadow" style="width:100%;overflow-x:auto;">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Carrier Name</th>
                    <th>Date created</th>
                    <th>Control</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($carriers as $carrier)
                <tr>
                    <td>{{$carrier->id}}</td>
                    <td>{{$carrier->carrier_name}}<img src="{{ asset('/img/carriers/'.$carrier->logo_name.'.svg')}}" class="ml-2" alt="" style='width:35px' /></td>
                    <td>{{$carrier->created_at}}</td>
                    <td>
                        <a class="carrier-edit-icon" data-name="{{$carrier->carrier_name}}" data-id="{{$carrier->id}}" data-logo-id="{{$carrier->carrier_logos_id}}" style="vertical-align:sub"> 
                            <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i>
                        </a>
                        <a class="delete-icon" data-id="{{$carrier->id}}">
                            <img src="{{ asset('/img/delete-button.svg')}}" class="" alt="" style='width:19px' data-toggle="modal" data-target="#delete">
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
    <div class="modal fade" id="create">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Create new Carrier</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.carriers.create') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Carrier Name:</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="usr" class="mr-5">Carrier Logo:</label>
                            
                            <select class='social' name="logo" style='min-width:900px'>
                                @foreach ($carriers_logos as $carriers_logo)
                                    <option value="{{ $carriers_logo->id}}">{{ $carriers_logo->logo_name }}</option>
                                @endforeach
                            </select>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Create new Carrier</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.carriers.edit') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Carrier Name:</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="usr" class="mr-5">Carrier Logo:</label>
                            
                            <select class='social' name="logo" style='min-width:900px'>
                                @foreach ($carriers_logos as $carriers_logo)
                                    <option value="{{ $carriers_logo->id}}">{{ $carriers_logo->logo_name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <input type="hidden" name="id" id="id"/>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="delete">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form action="{{ route('admin.carriers.delete') }}" method="POST">
                        @csrf
                        <div style="text-align:center;">
                            <p class="my-5" style="text-align:center;"><i class='fas fa-thin fa-exclamation-circle' style='font-size:50px;color:Tomato'></i></p>
                            <h2 class="mb-5">Are you sure?</h2>
                            <input type="hidden" name="id" id="id"/>
                            <button type="submit" class="btn btn-primary mr-3">Yes, delete it!</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
document.addEventListener("DOMContentLoaded", function(event) { 
    $(document).ready(function(){
        
        setTimeout(function() {
                $('.social').siblings('span').addClass('logo-style');
        }, 1000);
    });

});
</script>
@endsection