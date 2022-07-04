@extends('layouts.app')
   
@section('content')
<div class="container">
    <div class="subtitle">
        <div class="d-flex ">
            <span class="bg-light px-4 py-2 border-shadow"><h5 class="d-inline">Settings</h5><h5 class="d-inline"> / </h5><h5 class="d-inline">Highlights</h5></span>
        </div>
    </div>
    <div class="my-5"></div>
    <div class="row">
        <button class="btn btn-default ml-auto mr-1 add-row" data-toggle="modal" data-target="#create"><i class="fa fa-plus"></i>&nbsp;&nbsp; Create Highlights</button>
    </div>
    <div class="bg-light px-4 pt-5 border-shadow" style="width:100%;overflow-x:auto;">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Highlights Name</th>
                    <th>Date created</th>
                    <th>Control</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($highlights as $highlight)
                <?php
                    $router = route('admin.highlights.' . strtolower($highlight->name));
                ?>
                <tr>
                    <td><a href={{$router}}>{{$highlight->id}}</a></td>
                    <td><a href={{$router}}>{{$highlight->name}}</a></td>
                    
                    <td>{{$highlight->created_at}}</td>
                    <td>
                        <a class="edit-icon" data-name="{{$highlight->name}}" data-id="{{$highlight->id}}" style="vertical-align:sub"> 
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
</div>

@endsection