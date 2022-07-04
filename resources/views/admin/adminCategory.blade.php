@extends('layouts.app')
   
@section('content')
<div class="container">
    <div class="subtitle">
        <div class="d-flex ">
            <span class="bg-light px-4 py-2 border-shadow"><h5 class="d-inline">Settings</h5><h5 class="d-inline"> / </h5><h5 class="d-inline">Categories</h5></span>
        </div>
    </div>
    <div class="my-5"></div>
    <div class="row">
        <button class="btn btn-default ml-auto mr-0 add-row" data-toggle="modal" data-target="#create"><i class="fa fa-plus"></i>&nbsp;&nbsp; Make New Category</button>
    </div>
    <div class="bg-light px-4 pt-5 border-shadow" style="width:100%;overflow-x:auto;">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Categories</th>
                    <th>Date created</th>
                    <th>Control</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($categorys as $category)
                <tr>
                    <td>{{$category->id}}</td>
                    <td>{{$category->name}}</td>
                    <td>{{$category->created_at}}</td>
                    <td>
                        <a class="edit-icon" data-name="{{$category->name}}" data-id="{{$category->id}}" style="vertical-align:sub"> 
                            <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i>
                        </a>
                        <a class="delete-icon" data-id="{{$category->id}}">
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
                    <h4 class="modal-title">Create new Category</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.category.create') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Category Name:</label>
                            <input type="text" class="form-control" id="name" name="name">
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
                    <h4 class="modal-title">Edit the Category</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.category.edit') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Type new Category name:</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="">
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
                    <h4 class="modal-title">Delete the Category</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <h4>Are you sure?</h4>
                    <form action="{{ route('admin.category.delete') }}" method="POST">
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