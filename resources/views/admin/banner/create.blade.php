@extends('layouts.back-end.master')
@section('title', 'banner page')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">banner Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Add banner</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <div class="row justify-content-center">
        <div class="col-lg-12 shadow">
            <div class="card shadow rounded-0">

                <div class="border-bottom py-5">
                    <div class="row">
                        <div class="col-6">
                            <h3 class="fw-bold text-end">Add banner Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('banner.index') }}" class="btn btn-primary rounded-0">All banner</a>
                        </div>
                    </div>
                </div>

                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{ session('message') }}</p>
                    <form action="{{ route('banner.store') }}" method="POST" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">banner Title</label>
                            <div class="col-md-9">
                                <select name="banner_type" id="" class="form-control" required>
                                    <option value="">Select One</option>
                                    <option value="1">Title</option>
                                    <option value="2">Home</option>
                                    <option value="3">Contact</option>
                                    <option value="4">Order</option>
                                    <option value="5">Footer</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">banner Title</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" name="title" placeholder="banner Title"
                                    type="text" />
                                <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                            </div>
                        </div>


                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Slider Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Add New banner</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
