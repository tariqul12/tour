@extends('layouts.back-end.master')
@section('title','Service page')

@section('body')
<!-- PAGE-HEADER -->
<div class="page-header">
        <div>
            <h1 class="page-title">Service Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Add Service</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
<form action="{{route('service.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
    @csrf
    <div class="row justify-content-center">
        <div class="col-lg-12 shadow">
            <div class="card shadow rounded-0">

                <div class="border-bottom py-5">
                    <div class="row">
                        <div class="col-6">
                            <h3 class="fw-bold text-end">Add Service Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{route('service.index')}}" class="btn btn-primary rounded-0">All Service</a>
                        </div>
                    </div>
                </div>

                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{session('message')}}</p>

                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Service Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{old('name')}}" id="name" name="title" placeholder="service name" type="text" />
                                <span class="text-danger">{{$errors->has('name')?$errors->first('name'):''}}</span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Service Category</label>
                            <div class="col-md-9">
                                <select name="category_id" class="form-control" id="">
                                    <option value="">--select Category--</option>
                                    @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Short Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="short_description" name="short_description" placeholder="short description" ></textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Long Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="summernote" name="long_description" placeholder="long description" ></textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Service Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200"/>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="iconInp" class="col-md-3 form-label">Service OtherImage</label>
                            <div class="col-md-9">
                                <input class="form-control" name="other_image[]" placeholder="Other Image" multiple accept="image/*" type="file" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status" checked type="radio" value="1"><label for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status" type="radio" value="0"><label for="Unpublished">unpublished</label>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
    <div class="col-lg-12 shadow">
        <div class="card shadow rounded-0">
            <div class="border-bottom py-5">
                <div class="row">
                    <div class="col-6">
                        <h4 class="ms-3">Product SEO Information</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                    <div class="row mb-4">
                        <label for="Code" class="col-md-3 form-label">Search Keyword</label>
                        <div class="col-md-9">
                            <textarea class="form-control" id="search_keyword" name="search_keyword" placeholder="Search Keyword" ></textarea>
                        </div>
                    </div>

                    <div class="row mb-4">
                        <label for="Code" class="col-md-3 form-label">Meta Title</label>
                        <div class="col-md-9">
                            <textarea class="form-control" name="meta_title" placeholder="Meta Title" ></textarea>
                        </div>
                    </div>
                <div class="row mb-4">
                    <label for="Code" class="col-md-3 form-label">Meta Description</label>
                    <div class="col-md-9">
                        <textarea class="form-control" name="meta_description" placeholder="Meta Description" ></textarea>
                    </div>
                </div>

                    <div class="row mb-4">
                        <label for="radio" class="col-md-3 form-label"></label>
                        <div class="col-md-9">
                            <button class="btn btn-primary rounded-0 " style="width: 100%" type="submit">Add New Service</button>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>
</form>
@endsection
