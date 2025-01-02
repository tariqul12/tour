@extends('layouts.back-end.master')
@section('title', 'Manage Role')
@section('body')

    <!-- Row -->
    <div class="row mt-5">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">All Role</h3>
                    <a href="{{route('role.add')}}" class="btn btn-primary rounded-0 ms-auto">Add New Role</a>
                </div>
                <div class="card-body">
                    <p class="text-success text-center">{{Session::get('message')}}</p>
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                            <thead>
                            <tr>
                                <th>SL NO</th>
                                <th>Role Name</th>
                                <th>Description</th>
                                <th>Route Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($roles as $role)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$role->name}}</td>
                                    <td>{{$role->description}}</td>
                                    <td>
                                        @foreach($role->roleRoutes as $roleRoute)
                                            <span class="">{{$roleRoute->route_name.', '}}  </span>
                                        @endforeach
                                    </td>
                                    <td>
                                        <a href="{{route('role.edit', ['id' => $role->id])}}" class="btn btn-success btn-sm" title="Edit">
                                            <i class="ri-edit-box-fill"></i>
                                        </a>
                                        <a href="{{route('role.delete', ['id' => $role->id])}}" class="btn btn-danger btn-sm" title="Delete" onclick="return confirm('Ary you sure to delete this..');">
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
