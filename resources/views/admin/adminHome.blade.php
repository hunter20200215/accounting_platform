@extends('layouts.app')
   
@section('content')
<!-- <div class="container"> -->
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="mt-2" style="overflow-x:auto;">
                    <table class="table table-hover" style="width:100%;">
                        <thead>
                            <tr>
                                <th class="sort-style" id="sortId">ID</th>
                                <th class="sort-style" id="sortName">Full Name</th>
                                <th class="sort-style" id="sortCreated">Created By</th>
                                <th class="sort-style" id="sortLast">Last Touch</th>
                                <th class="sort-style" id="">Update Content</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                            <?php $i=0?>
                            @foreach ($clients as $index=> $client)
                                <tr>
                                    <td><a href=<?php echo route('admin.clients.profile',['id' => $client->id])?>>{{$client->id}}</a></td>
                                    @if ($client->dod_date)
                                    <td><a href=<?php echo route('admin.clients.profile',['id' => $client->id])?>>{{$client->first_name}} {{$client->middle_name}} {{$client->last_name}}  <i class="fas fa-skull text-danger"></i></a></td>
                                    @else
                                    <td><a href=<?php echo route('admin.clients.profile',['id' => $client->id])?>>{{$client->first_name}} {{$client->middle_name}} {{$client->last_name}}</a></td>
                                    @endif
                                    <td><?php echo $rolls[$i]?></td>
                                    <td>{{$client->updated_at}}</td>
                                    @if ($logs[$i])
                                    <td>{{$logs[$i]->content}}</td>
                                    @else
                                    <td>Just Created</td>
                                    @endif
                                </tr>
                                <?php $i= $i + 1;?>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="d-flex justify-content-center">
                    {{ $clients->links() }}
                </div>
            </div>
        </div>
    </div>
<!-- </div> -->
@endsection