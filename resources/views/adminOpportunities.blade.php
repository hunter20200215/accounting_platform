@extends('layouts.app')
   
@section('content')
<div class="px-5">
    <div class="mb-5 text-right">
        <a href="#" class="bg-light sub-title-style py-2">RRIF</a>
        <a href="#" class="bg-light sub-title-style py-2">Segs</a>
        <a href="#" class="bg-light sub-title-style py-2">Life</a>
        <a href="#" class="bg-light sub-title-style py-2">CI</a>
    </div>
    
    <table class="bg-light table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Age</th>
            <th>Links</th>
            <th>Last Return</th>
            <th>Last Update</th>
        </tr>
        </thead>
        <tbody>
            <?php $i=0?>
            @foreach ($clients as $client)
                <tr>
                    <td><a href=<?php echo route('admin.clients.profile',['id' => $client->id])?>>{{$client->id}}</a></td>
                    <td><a href=<?php echo route('admin.clients.profile',['id' => $client->id])?>>{{$client->first_name}} {{$client->middle_name}} {{$client->last_name}}</a></td>
                    <td>{{$client->primary_phone}}</td>
                    <td><?php echo $rolls[$i]?></td>
                    <td>{{$client->created_at}}</td>
                    <td>{{$client->updated_at}}</td>
                </tr>
                <?php $i= $i + 1;?>
            @endforeach
        </tbody>
    </table>

    
    
    <div class="d-flex justify-content-center">
        
    </div>
</div>
@endsection