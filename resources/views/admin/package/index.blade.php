@extends('layouts.back-end.master')
@section('title', 'package page')
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Package Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Project</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <!-- Row -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card rounded-0">
                <div class="border-bottom py-5">
                    <div class="row">
                        <div class="col-6">
                            <h3 class="fw-bold text-end">All Package Info</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('package.create') }}" class="btn btn-primary rounded-0">Add New Package</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary text-center fw-bold fs-6">{{ session('message') }}</p>
                    <div class="table-responsive">
                        <table id="example3" class="table table-bordered text-nowrap border-bottom">
                            <thead>
                                <tr class="text-center">
                                    <th class="border-bottom-0">SL No</th>
                                    <th class="border-bottom-0">title</th>
                                    <th class="border-bottom-0">sub title</th>
                                    <th class="border-bottom-0">speed</th>
                                    <th class="border-bottom-0">download speed</th>
                                    <th class="border-bottom-0">up speed</th>
                                    <th class="border-bottom-0">price</th>
                                    <th class="border-bottom-0">Status</th>
                                    <th class="border-bottom-0">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($packages as $package)
                                    <tr class="text-center">
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $package->title }}</td>
                                        <td>{{ $package->sub_title }}</td>
                                        <td>{{ $package->speed }}</td>
                                        <td>{{ $package->download_speed }}</td>
                                        <td>{{ $package->up_speed }}</td>
                                        <td>{{ $package->price }}</td>
                                        <td>{{ $package->status == 1 ? 'published' : 'unpublished' }}</td>
                                        <td class="text-center">
                                            <a href="{{ route('package.edit', $package->id) }}"
                                                class="btn btn-primary btn-sm mb-1"><i class="fa fa-edit"></i></a>
                                            <form action="{{ route('package.destroy', $package->id) }}" method="post">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" onclick="return confirm('are you sure to delete ?')"
                                                    class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                            </form>
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
