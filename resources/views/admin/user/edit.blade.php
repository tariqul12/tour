@extends('layouts.back-end.master')
@section('title', 'Edit User Info')
@section('body')
    <div class="row mt-5">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Edit User Form</h3>
                    <a href="{{route('role.manage')}}" class="btn btn-primary rounded-0 ms-auto">All User</a>
                </div>
                <div class="card-body">
                    <p class="text-success text-center">{{Session::get('message')}}</p>
                    <form class="form-horizontal" action="{{route('user.update', ['id' => $user->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-3">
                            <label for="inputEmail3" class="col-3 col-form-label">User Name</label>
                            <div class="col-9">
                                <input type="text" class="form-control" name="name" value="{{$user->name}}" id="inputEmail3" placeholder="User Name"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputEmail31" class="col-3 col-form-label">User Email</label>
                            <div class="col-9">
                                <input type="email" class="form-control" name="email" value="{{$user->email}}" id="inputEmail31" placeholder="User Email"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputEmail32" class="col-3 col-form-label">User Password</label>
                            <div class="col-9">
                                <input type="password" class="form-control" name="password" id="inputEmail32" placeholder="User Password"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputEmail33" class="col-3 col-form-label">User Mobile</label>
                            <div class="col-9">
                                <input type="number" class="form-control" value="{{$user->mobile}}" name="mobile" id="inputEmail33" placeholder="User Mobile"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputEmail34" class="col-3 col-form-label">User Image</label>
                            <div class="col-9">
                                <input type="file" class="form-control" name="image" id="inputEmail34" placeholder="User Image"/>
                                @if($user->image)
                                    <img src="{{asset($user->image)}}" alt="" height="70" width="100"/>
                                @endif
                            </div>
                        </div>
                        <div class="row mb-3 justify-content-end">
                            <label class="col-3">Select User Role</label>
                            <div class="col-9">
                                @foreach($roles as $key => $role)
                                    <div class="form-check form-check-inline">
                                        <input type="checkbox" value="{{ $role->id }}" name="role[]" class="form-check-input" @foreach($user->roles as $user_role) @if($user_role->id == $role->id) {{'checked'}} @endif  @endforeach id="customCheck{{$key}}"/>
                                        <label class="form-check-label" for="customCheck{{$key}}">{{ $role->name }}</label>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <button class="btn btn-primary rounded-0" type="submit">Update User Info</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
