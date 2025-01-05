@extends('layouts.back-end.master')
@section('title', 'Gallery page')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Gallery Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Gallery</li>
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
                            <h3 class="fw-bold text-end">Edit Gallery Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('gallery.index') }}" class="btn btn-primary rounded-0">All Gallery</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{ session('message') }}</p>
                    <form action="{{ route('gallery.update', $gallery->id) }}" method="POST" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Palce Name</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $gallery->title }}" id="name" name="title"
                                    placeholder="Gallery title" type="text">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Gallery Image</label>
                            <div class="col-md-9">
                                <input type="file" id="imgInp" class="dropify" name="image" data-height="200" />
                                <img width="120" class="my-1" src="{{ asset($gallery->image) }}" id="inputImage"
                                    alt="">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status"
                                    {{ $gallery->status == 1 ? 'checked' : '' }} type="radio" value="1"><label
                                    for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status"
                                    {{ $gallery->status == 0 ? 'checked' : '' }} type="radio" value="0"><label
                                    for="Unpublished">unpublished</label>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Update Gallery</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
