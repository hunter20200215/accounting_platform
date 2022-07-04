@extends('layouts.app')
   
@section('content')

<div class="container">
    <?php $rolls = ['Admin', 'Data Entry', 'Bookkeeper'] ?>
    <div class="my-5"></div>
    <div class="row">
        <button class="btn btn-default ml-auto mr-0 add-row" data-toggle="modal" data-target="#create"><i class="fa fa-plus"></i>&nbsp;&nbsp; Create New User</button>
    </div>
    <div class="bg-light px-4 pt-5 border-shadow" style="width:100%;overflow-x:auto;">
    
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Roll</th>
                    <th>Control</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$rolls[$user->roll]}}</td>
                    <td>
                        <a class="user-edit-icon" style="vertical-align:sub" data-name="{{$user->name}}" data-email="{{$user->email}}"  data-roll="{{$user->roll}}" data-id="{{$user->id}}"> 
                            <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i>
                        </a>
                        <a class="delete-icon" data-id="{{$user->id}}">
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
                    <h4 class="modal-title">Create new User</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.users.create') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Type user name:</label>
                            <input type="text" class="form-control" id="name" name="name"  required>
                        </div>
                        <div class="form-group">
                            <label for="usr">Type email:</label>
                            <input type="text" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="usr">Type password:</label>
                            <input type="text" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="form-group">
                            <label for="usr">Select Roll:</label>
                            <select name="roll" id="roll" class="form-control">
                                <option id="Admin" value="0">Admin Level</option>
                                <option id="data_entry" value="1">Data Entry</option>
                                <!-- <option id="bookkeeper" value="2">Bookkeeper</option> -->
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
                    <h4 class="modal-title">Edit this User</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.users.edit') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Type user name:</label>
                            <input type="text" class="form-control" id="name" name="name"  required>
                        </div>
                        <div class="form-group">
                            <label for="usr">Type email:</label>
                            <input type="text" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="usr">Type password:</label>
                            <input type="text" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="form-group">
                            <label for="usr">Select Roll:</label>
                            <select name="roll" id="roll" class="form-control">
                                <option id="data_entry" value="0">Admin</option>
                                <option id="data_entry" value="1">Data Entry</option>
                                <option id="bookkeeper" value="2">Bookkeeper</option>
                            </select>
                        </div>

                        <input type="hidden" name="id" id="id">
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
                
                
                
                
            </div>
        </div>
    </div>
    <div class="modal fade" id="delete">
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Delete this User</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <h4>Are you sure?</h4>
                    <form action="{{ route('admin.users.delete') }}" method="POST">
                        @csrf
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