@extends('layouts.back-end.master')
@section('title', 'Add New Role')
@section('body')
    <div class="row mt-5">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Add Role Form</h3>
                    <a href="{{route('role.manage')}}" class="btn btn-primary rounded-0 ms-auto">All Role</a>
                </div>
                <div class="card-body">
                    <p class="text-success text-center">{{Session::get('message')}}</p>
                    <form class="form-horizontal" method="POST" action="{{route('role.new')}}">
                        @csrf
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Role Name</label>
                            <div class="col-md-9">
                                <input class="form-control" id="name" name="name" placeholder="Role Name" type="text">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="description" class="col-md-3 form-label">Role Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="description" id="description" placeholder="Role Description"></textarea>
                            </div>
                        </div>
                        <div class="row mb-4 justify-content-end">
                            <label class="col-3 col-form-label">Select Route</label>
                            <div class="col-9">

                                <div class="form-check form-check-inline">
                                    <input type="checkbox" value="" name="" class="form-check-input" id="allRoute"/>
                                    <label class="form-check-label" for="allRoute">All</label>
                                </div>
                                <br/>
                                <hr/>
                                @foreach($routeLists as $key => $routeList)
                                    @if($routeList->getName() != 'livewire.preview-file' && $routeList->getName() != 'livewire.upload-file' && $routeList->getName() != 'livewire.message' && $routeList->getName() != 'profile.show' && $routeList->getName() != 'two-factor.recovery-codes' && $routeList->getName() != 'two-factor.secret-key' && $routeList->getName() != 'two-factor.qr-code' && $routeList->getName() != 'two-factor.disable' &&  $routeList->getName() != 'two-factor.confirm' && $routeList->getName() != 'two-factor.enable' && $routeList->getName() != 'two-factor.auth' && $routeList->getName() != 'password.confirm' && $routeList->getName() != 'password.confirmation' && $routeList->getName() != 'user-password.update' && $routeList->getName() != 'user-profile-information.update' && $routeList->getName() != 'register' && $routeList->getName() != 'password.update' && $routeList->getName() != 'password.email' && $routeList->getName() != 'password.reset' && $routeList->getName() != 'password.request' && $routeList->getName() != 'ignition.executeSolution' && $routeList->getName() != 'ignition.updateConfig' && $routeList->getName() != 'ignition.healthCheck' && $routeList->getName() != 'sanctum.csrf-cookie' && $routeList->getName() != null && $routeList->getName() != 'logout' && $routeList->getName() != 'auth' && $routeList->getName() != 'dashboard' && $routeList->getName() != 'livewire.message-localized' && $routeList->getName() != 'admin-auth' && $routeList->getName() != 'dashboard' && $routeList->getName() != 'login' && $routeList->getName() != 'two-factor.login' && $routeList->getName() != 'livewire.update')
                                        <div class="form-check form-check-inline">
                                            <input type="checkbox" value="{{ $routeList->getName() }}" name="route_name[]" class="form-check-input all-route-checkbox" id="customCheck{{$key}}"/>
                                            <label class="form-check-label" for="customCheck{{$key}}">{{ $routeList->getName() }}</label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                        <button class="btn btn-primary rounded-0" type="submit">Create New Role</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
