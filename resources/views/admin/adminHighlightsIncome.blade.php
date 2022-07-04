@extends('layouts.app')
   
@section('content')
<div class="container">
    <div class="subtitle">
        <div class="d-flex ">
            <span class="bg-light px-4 py-2 border-shadow">
                <h5 class="d-inline">Settings</h5><h5 class="d-inline"> / </h5>
                <h5 class="d-inline"><a href="{{route('admin.highlights')}}" class="none-decoration">Highlights</a> </h5>
                <h5 class="d-inline"> / </h5>
                <h5 class="d-inline"><a href="{{route('admin.highlights.income')}}" class="none-decoration">Income</a></h5>
            </span>
        </div>
    </div>
    <div class="my-3"></div>

    <div class="row" style="margin-right: 0px;margin-left: 0px;">
        <button class="btn btn-primary ml-auto mr-0 add-row" data-toggle="modal" data-target="#create" style="font-size:15px"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add New</button>
    </div>

    <div class="bg-light px-4 pt-5 border-shadow" style="width:100%;overflow-x:auto;">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Income HighlightsName</th>
                <th>Date created</th>
                <th>Control</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($highlights as $highlight)
                <tr>
                    <td>{{$highlight->id}}</td>
                    <td>{{$highlight->name}}</td>
                    <td>{{$highlight->created_at}}</td>
                    <td>
                        <a class="edit-icon" data-name="{{$highlight->name}}" data-value="{{$highlight->value}}" data-id="{{$highlight->id}}" style="vertical-align:sub"> 
                            <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i>
                        </a>
                        <a class="delete-icon" data-id="{{$highlight->id}}">
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
                    <h4 class="modal-title">Create new Highlight</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.highlights.income.create') }}">
                        <div class="form-group">
                            <label for="usr">Name:</label>
                            <input type="text" autofocus class="form-control" id="name" name="name" required >
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
                    <h4 class="modal-title">Edit the Highlight</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.highlights.income.edit') }}">
                        <div class="form-group">
                            <label for="usr">Type new name:</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="" required>
                        </div>
                        
                        <input type="hidden" name="id" id="id">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="delete">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Delete the Highlight</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.highlights.income.delete') }}">
                        <button type="button" class="btn border" data-dismiss="modal">cancel</button>
                        <button type="submit" class="btn border">Ok</button>
                        <input type="hidden" name="id" id="id">
                    </form>

                </div>
            </div>
        </div>
    </div>
    
        

</div>

@endsection