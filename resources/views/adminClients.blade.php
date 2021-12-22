@extends('layouts.app')
   
@section('content')

<div class="mx-auto  mt-1" style="width:93%;">
    <div class="row">
        <div class="col-md-3" >
            <div class="bg-light px-2 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <form action="{{ route('admin.clients.filter1') }}" method="GET">
                    <div class="p-1">
                        <div class="d-flex md-4">
                            <h4 class="d-inline mr-auto">Filter By</h4>
                            <a href="{{ route('admin.clients') }}" class="">Clear filters</a>
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
                <form action="{{ route('admin.clients.filter2') }}" method="get">    
                    <div class="px-2">
                        <div class="d-flex">
                            <a class="btn btn-primary ml-auto mr-0 add-row mb-3" href="{{ route('admin.clients.create') }}"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add Client</a>
                        </div>
                        <div class="d-flex"> 
                            <h4 class="mt-1">Clients: {{$counters}}</h4>
                            <div class="input-group ml-auto mr-0" style="width:65%;">
                                <input type="text" class="border border-secondary h-100 form-control" placeholder="Input search query" name="full_name" value="{{ $full_name }}">
                                <div class="input-group-append">
                                    <a class="border-top border-bottom border-secondary bg-white btn-secondary" data-toggle="modal" data-target="#edit_filter">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30px" height="98%"  viewBox="0 0 512 512">
                                            <path id="control-panel-8-icon" d="M50 279.694h119v69h-39.5V442h-40v-93.306H50v-69zm147-32.444h39.5V442h40V247.25H316v-69H197v69zM276.5 70h-40v78.25h40V70zM462 279.89H343v69h39.5V442h40v-93.11H462v-69zM129.5 70h-40v179.694h40V70zm293 0h-40v179.694h40V70z">
                                            </path>
                                        </svg>
                                    </a>
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
                                <th class="sort-style" id="sortId">ID</th>
                                <th class="sort-style" id="sortName">Full Name</th>
                                <th class="sort-style" id="sortPhone">Phone</th>
                                <th class="sort-style" id="sortCreated">Created By</th>
                                <th class="sort-style" id="sortDate">Date added</th>
                                <th class="sort-style" id="sortLast">Last Touch</th>
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
                            {{ $clients->links() }}
                        </div>
                    </div>
                    <div class="modal fade" id="edit_filter">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Setting your filter</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="ml-5">
                                        @if (in_array(0, $sets))
                                            <div>
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="sets[]" checked value='0' >Search in names
                                                </label>
                                            </div>
                                        @else
                                            <div>
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="sets[]" value='0' >Search in names
                                                </label>
                                            </div>
                                        @endif

                                        @if (in_array(1, $sets))
                                            <div>
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="sets[]" checked value='1' >Search in names
                                                </label>
                                            </div>
                                        @else
                                            <div>
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="sets[]" value='1' >Search in names
                                                </label>
                                            </div>
                                        @endif
                                    </div>
                                        
                                    <button type="button" class="d-flex ml-auto btn btn-primary" data-dismiss="modal">Save</button>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<form action="{{ route('admin.clients.sortid') }}" method="GET" id="sortById">
    <input type="hidden" value="{{$sortId}}" name="sortId"/>
    <input type="hidden" value="{{$sortName}}" name="sortName"/>
    <Input type="hidden" value = "{{$sortPhone}}" name="sortPhone"/>
    <Input type="hidden" value = "{{$sortCreatedBy}}" name="sortCreatedBy"/>
    <input type="hidden" value="" name="categorys">
    <input type="hidden" value="" name="income">
    <input type="hidden" value="" name="deduction">
    <input type="hidden" value="" name="start_date1">
    <input type="hidden" value="" name="end_date1">
    <input type="hidden" value="" name="sets">
    <input type="hidden" value="" name="full_name1">
</form>
<form action="{{ route('admin.clients.sortname') }}" method="GET" id="sortByName">
    <input type="hidden" value="{{$sortId}}" name="sortId"/>
    <input type="hidden" value="{{$sortName}}" name="sortName"/>
    <Input type="hidden" value = "{{$sortPhone}}" name="sortPhone"/>
    <Input type="hidden" value = "{{$sortCreatedBy}}" name="sortCreatedBy"/>
    <input type="hidden" value="" name="categorys">
    <input type="hidden" value="" name="income">
    <input type="hidden" value="" name="deduction">
    <input type="hidden" value="" name="start_date1">
    <input type="hidden" value="" name="end_date1">
    <input type="hidden" value="" name="sets">
    <input type="hidden" value="" name="full_name1">
</form>
<form action="{{ route('admin.clients.sortphone') }}" method="GET" id="sortByPhone">
    <input type="hidden" value="{{$sortId}}" name="sortId"/>
    <input type="hidden" value="{{$sortName}}" name="sortName"/>
    <Input type="hidden" value = "{{$sortPhone}}" name="sortPhone"/>
    <Input type="hidden" value = "{{$sortCreatedBy}}" name="sortCreatedBy"/>
    <input type="hidden" value="" name="categorys">
    <input type="hidden" value="" name="income">
    <input type="hidden" value="" name="deduction">
    <input type="hidden" value="" name="start_date1">
    <input type="hidden" value="" name="end_date1">
    <input type="hidden" value="" name="sets">
    <input type="hidden" value="" name="full_name1">
</form>

<form action="{{ route('admin.clients.createdby') }}" method="GET" id="sortCreatedBy">
    <input type="hidden" value="{{$sortId}}" name="sortId"/>
    <input type="hidden" value="{{$sortName}}" name="sortName"/>
    <Input type="hidden" value = "{{$sortPhone}}" name="sortPhone"/>
    <Input type="hidden" value = "{{$sortCreatedBy}}" name="sortCreatedBy"/>
    <input type="hidden" value="" name="categorys">
    <input type="hidden" value="" name="income">
    <input type="hidden" value="" name="deduction">
    <input type="hidden" value="" name="start_date1">
    <input type="hidden" value="" name="end_date1">
    <input type="hidden" value="" name="sets">
    <input type="hidden" value="" name="full_name1">
</form>
@endsection