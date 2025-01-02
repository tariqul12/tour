@extends('layouts.back-end.master')
@section('title','Blog page')

@section('body')
<!-- PAGE-HEADER -->
<div class="page-header">
        <div>
            <h1 class="page-title">Blog Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Blog</li>
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
                            <h3 class="fw-bold text-end">All Blog Info</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{route('blog.create')}}" class="btn btn-primary rounded-0">Add New Blog</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary text-center fw-bold fs-6">{{session('message')}}</p>
                    <div class="table-responsive">
                        <table id="example3" class="table table-bordered text-nowrap border-bottom">
                            <thead>
                            <tr class="text-center">
                                <th class="border-bottom-0">SL No</th>
                                <th class="border-bottom-0">Title</th>
                                <th class="border-bottom-0">Image</th>
                                <th class="border-bottom-0">Author</th>
                                <th class="border-bottom-0">Status</th>
                                <th class="border-bottom-0">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($blogs as $blog)
                                <tr class="text-center">
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$blog->title}}</td>
                                    <td>
                                        <img src="{{asset($blog->image)}}" height="100" alt="blog image" />
                                    </td>
                                    <td>{{$blog->user->name}}</td>
                                    <td>{{$blog->status == 1 ? 'published':'unpublished'}}</td>
                                    <td class="text-center">
                                        <a href="{{route('blog.edit',$blog->id)}}" class="btn btn-primary btn-sm mb-1"><i class="fa fa-edit"></i></a>
                                        <a href="{{route('blog.show',$blog->id)}}" class="btn btn-success btn-sm mb-1"><i class="fa fa-eye"></i></a>
                                        <form action="{{route('blog.destroy',$blog->id)}}" method="post">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" onclick="return confirm('are you sure to delete ?')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
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
