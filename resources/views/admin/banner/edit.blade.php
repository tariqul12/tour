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
                <li class="breadcrumb-item active" aria-current="page">Edit banner</li>
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
                            <h3 class="fw-bold text-end">Edit banner Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('banner.index') }}" class="btn btn-primary rounded-0">All banner</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{ session('message') }}</p>
                    <form action="{{ route('banner.update', $banner->id) }}" method="POST" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">banner Title</label>
                            <div class="col-md-9">
                                <select name="banner_type" id="" class="form-control" required>
                                    <option value="">Select One</option>
                                    <option value="1" @selected($banner->banner_type == 1)>Title</option>
                                    <option value="2" @selected($banner->banner_type == 2)>Home</option>
                                    <option value="3" @selected($banner->banner_type == 3)>Contact</option>
                                    <option value="4" @selected($banner->banner_type == 4)>Order</option>
                                    <option value="5" @selected($banner->banner_type == 5)>Footer</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">banner Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $banner->title }}" id="name" name="title"
                                    placeholder="banner name" type="text">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">banner Image</label>
                            <div class="col-md-9">
                                <input type="file" id="imgInp" class="dropify" name="image" data-height="200" />
                                <img width="120" class="my-1" src="{{ asset($banner->image) }}" id="inputImage"
                                    alt="">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Update banner</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
