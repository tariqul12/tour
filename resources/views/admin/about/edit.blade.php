@extends('layouts.back-end.master')
@section('title','category page')

@section('body')
<!-- PAGE-HEADER -->
<div class="page-header">
        <div>
            <h1 class="page-title">Category Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Category</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <div class="row justify-content-center">
        <div class="col-lg-12 shadow">
            <div class="card shadow">
                <div class="border-bottom py-5">
                    <div class="row">
                        <div class="col-6">
                            <h3 class="fw-bold text-end">Edit Category Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{route('category.index')}}" class="btn btn-primary rounded-0">All Category</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{session('message')}}</p>
                    <form action="{{route('category.update',$category->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Category name</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{$category->name}}" id="name" name="name" placeholder="category name" type="text">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="Code" name="description" placeholder="type code" type="text">{{$category->description}}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Category Image</label>
                            <div class="col-md-9">
                                <input type="file" id="imgInp" class="dropify" name="image" data-height="200"/>
                                <img width="120" class="my-1" src="{{asset($category->image)}}" id="inputImage" alt="">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="iconInp" class="col-md-3 form-label">Category Icon</label>
                            <div class="col-md-9">
                                <input class="form-control" name="icon" id="iconInp" placeholder="category icon" type="file" />
                                <img width="100" src="{{asset($category->icon)}}" id="" alt="">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status" {{$category->status == 1 ? 'checked':''}}  type="radio" value="1"><label for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status" {{$category->status == 0 ? 'checked':''}} type="radio" value="0"><label for="Unpublished">unpublished</label>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Update Category</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
