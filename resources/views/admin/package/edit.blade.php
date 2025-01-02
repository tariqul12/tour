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
                <li class="breadcrumb-item active" aria-current="page">Edit Package</li>
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
                            <h3 class="fw-bold text-end">Edit Package Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('package.index') }}" class="btn btn-primary rounded-0">All Package</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{ session('message') }}</p>
                    <form action="{{ route('package.update', $package->id) }}" method="POST" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $package->title }}" id="name" name="title"
                                    placeholder="package name" type="text">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Sub Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $package->sub_title }}" id=""
                                    name="sub_title" placeholder="Package Sub Title" type="text" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Speed</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->speed }}" name="speed"
                                    placeholder="Package Speed" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Download Speed</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->download_speed }}"
                                    name="download_speed" placeholder="Package Download Speed" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Up Speed</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->up_speed }}" name="up_speed"
                                    placeholder="Package Up Speed" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Price</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->price }}" name="price"
                                    placeholder="Package Price" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="summernote" name="description" placeholder="type code" type="text">{{ $package->description }}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status"
                                    {{ $package->status == 1 ? 'checked' : '' }} type="radio" value="1"><label
                                    for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status"
                                    {{ $package->status == 0 ? 'checked' : '' }} type="radio" value="0"><label
                                    for="Unpublished">unpublished</label>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Update Package</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
