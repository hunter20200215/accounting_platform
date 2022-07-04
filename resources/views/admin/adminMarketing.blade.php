@extends('layouts.app')
   
@section('content')
<div class="mobile-padding">
    <div class="mb-5 text-right">
        <a href="#" class="bg-light sub-title-style py-2">Direct Response</a>
        <a href="#" class="bg-light sub-title-style py-2">Email</a>
        <a href="#" class="bg-light sub-title-style py-2" data-toggle="modal" data-target="#create">New Campaign</a>
        <a href="#" class="bg-light sub-title-style py-2">Placeholder2</a>
    </div>
    <div style="width:100%;overflow-x:auto;">
        <table class="bg-light table table-hover">
            <thead>
            <tr>
                <th>Campaign ID</th>
                <th>Campaign Name</th>
                <th>Created By</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
                <?php $i=0?>
                @foreach ($campaigns as $campaign)
                    <tr>
                        <td> {{ $campaign->id}} </td>
                        <td> {{ $campaign->campaign_name}} </td>
                        <td> {{ $campaign->name}} </td>
                        <td>
                            <a class="link-icon3" data-id="{{$campaign->id}}" data-name="{{$campaign->campaign_name}}" data-action="{{$campaign->action}}" style="vertical-align:sub"> <i class='fas fa-link mr-2' style='font-size:16px' data-toggle="modal" data-target="#link"></i></a>
                            <a class="copy-icon3" data-id="{{$campaign->id}}" data-name="{{$campaign->campaign_name}}" data-action="{{$campaign->action}}" style="vertical-align:sub"> <i class='fas fa-copy mr-2' style='font-size:16px'></i></a>
                            <a class="edit-icon3" data-id="{{$campaign->id}}" data-name="{{$campaign->campaign_name}}" data-action="{{$campaign->action}}" style="vertical-align:sub"> <i class='fas fa-pencil-alt mr-2' style='font-size:16px' aria-hidden="true" data-toggle="modal" data-target="#edit"></i></a>
                            <a class="delete-icon" data-id="{{$campaign->id}}"> <img src="{{ asset('/img/delete-button.svg')}}" class="" alt="" style='width:19px' data-toggle="modal" data-target="#delete"></a>
                        </td>
                    </tr>
                    <?php $i= $i + 1;?>
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="d-flex justify-content-center">
        {{ $campaigns->links() }}
    </div>
    
    <div class="modal fade" id="create">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Create new Campaign</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
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
                    <form action="{{ route('admin.campaign.create') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Campaign Name:</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                            <label for="usr" class="mt-3">Actions:</label>
                            <div class="form-check ml-2">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" value="1" name="action">Email
                                </label>
                            </div>
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
                    <h4 class="modal-title">Edit new Campaign</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
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
                    <form action="{{ route('admin.campaign.edit') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="usr">Campaign Name:</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                            <label for="usr" class="mt-3">Actions:</label>
                            <div class="form-check ml-2">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" value="1" name="action" id="action">Email
                                </label>
                            </div>
                        </div>
                        <input type="hidden" name="id" id="id">
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
                    <form action="{{ route('admin.campaign.delete') }}" method="POST">
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

@endsection