@extends('layouts.entry')
@section('content')
<div class="mx-auto  mt-1" style="width:93%;">
    <div class="row">
        <div class="col-md-3" >
            <div class="bg-light px-2 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <form action="{{ route('entry.clients.filter1') }}" method="GET">
                    <div class="p-1">
                        <div class="d-flex md-4">
                            <h4 class="d-inline mr-auto">Filter By</h4>
                            <a href="{{ route('entry.clients') }}" class="">Clear filters</a>
                        </div>
                        <div class="mb-4">
                            <h5 class="d-inline mr-auto">Categories</h5>
                            <div class="d-block">
                                @foreach ($categorys as $category)
                                    @if (in_array($category->name, $selected_categorys))
                                        <div class="form-check ml-2">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="categorys[]" checked value=<?php echo $category->name?>> {{$category->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="form-check ml-2">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="categorys[]"  value=<?php echo $category->name?>> {{$category->name}}
                                            </label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>    
                        </div>
                        <div class="mb-4">
                            <h5 class="d-block mr-auto">Income Highlights</h5>
                            <div class="d-block ml-2">
                                @foreach ($incomehighlights as $incomehighlight)
                                    @if (in_array($incomehighlight->id, $selected_income))
                                        <div class="d-inline-block form-check w-49">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="income[]" checked value=<?php echo $incomehighlight->id?> > {{$incomehighlight->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="d-inline-block form-check w-49">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="income[]"  value=<?php echo $incomehighlight->id?> > {{$incomehighlight->name}}
                                            </label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>    
                        </div>

                        <div class="mb-4">
                            <h5 class="d-inline mr-auto">Deduction Highlights</h5>
                            <div class="d-block">
                                @foreach ($deductionhighlights as $deductionhighlight)
                                    @if (in_array($deductionhighlight->id, $selected_deduction))
                                        <div class="form-check ml-2">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="deduction[]" checked value=<?php echo $deductionhighlight->id ?> > {{$deductionhighlight->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="form-check ml-2">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="deduction[]"  value=<?php echo $deductionhighlight->id ?> > {{$deductionhighlight->name}}
                                            </label>
                                        </div>
                                    @endif
                                    
                                @endforeach
                            </div>    
                        </div>

                        <div class="mb-4">
                            <h5 class="d-inline mr-auto">Date of Birth Range</h5>
                            <div class="d-block">
                                <label for="birthdaytime" class="my-0 ml-2">Start date</label>
                                <input type="date"  name="start_date"  class="mb-1 w-100 form-control" value="">
                                <label for="birthdaytime" class="my-0 ml-2">End date</label>
                                <input type="date"  name="end_date"  class="mb-1 w-100 form-control" value="">
                            </div>    
                        </div>

                        <div class="mb-4">
                            <div class="d-flex">
                                <input type="reset" value="Reset" class=" btn btn-secondary mr-auto">
                                <input type="submit" value="Submit" class="mr-0 btn btn-success">
                            </div>    
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="col-md-9">
            <div class="bg-light px-1 py-2" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <form action="{{ route('entry.clients.filter2') }}" method="get">    
                    <div class="px-2">
                        <div class="d-flex">
                            <a class="btn btn-primary ml-auto mr-0 add-row mb-3" href="{{ route('entry.clients.create') }}"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add Client</a>
                        </div>
                        <div class="d-flex"> 
                            <h4 class="mt-1">Clients: {{$counters}}</h4>
                            <div class="input-group ml-auto mr-0" style="width:65%;">
                                <input type="text" class="form-control" placeholder="Search by Client name" name="full_name">
                                <div class="input-group-append">
                                    <button class="btn btn-secondary" type="submit">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="my-5"></div>
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Full Name</th>
                                <th>Phone</th>
                                <th>Created By</th>
                                <th>Date added</th>
                                <th>Last Touch</th>
                            </tr>
                            </thead>
                            <tbody>
                                <?php $i=0?>
                                @foreach ($clients as $client)
                                    <tr>
                                        <td><a href=<?php echo route('entry.clients.profile',['id' => $client->id])?>>{{$client->id}}</a></td>
                                        <td><a href=<?php echo route('entry.clients.profile',['id' => $client->id])?>>{{$client->first_name}} {{$client->middle_name}} {{$client->last_name}}</a></td>
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
                            {{ $clients->links() }}
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection