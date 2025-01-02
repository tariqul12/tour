@extends('layouts.back-end.master')
@section('title', 'Manage User')
@section('body')
    <div class="row mt-5">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h4 class="header-title">All User Information</h4>
                    <a href="{{route('user.add')}}" class="btn btn-primary rounded-0 ms-auto">Add New User</a>
                </div>
                <div class="card-body">
                    <p class="text-success text-center">{{Session::get('message')}}</p>
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                            <thead>
                            <tr>
                                <th>SL NO</th>
                                <th>User Name</th>
                                <th>Role Name</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $user)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>
                                        @php($result = '')
                                        @foreach($user->roles as $user_role)
                                            @php($result .= $user_role->name.' , ')
                                        @endforeach
                                            <span>{{rtrim($result, ' , ')}}</span>
                                    </td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->mobile}}</td>
                                    <td>
                                        <a href="{{route('user.edit', ['id' => $user->id])}}" class="btn btn-success btn-sm" title="Edit">
                                            <i class="ri-edit-box-fill"></i>
                                        </a>
                                        <a href="{{route('user.delete', ['id' => $user->id])}}" class="btn btn-danger btn-sm {{$user->id == 1 ? 'disabled' : ''}}" title="Delete" onclick="return confirm('Ary you sure to delete this..');">
                                            <i class="ri-chat-delete-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->
@endsection
