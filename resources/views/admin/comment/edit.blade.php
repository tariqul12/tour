@extends('layouts.back-end.master')
@section('title', 'Blog page')
@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Blog Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Blog</li>
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
                            <h3 class="fw-bold text-end">Edit Blog Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('blog.index') }}" class="btn btn-primary rounded-0">All Blog</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{ session('message') }}</p>
                    <form action="{{ route('blog.update', $blog->id) }}" method="POST" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Blog Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $comment->name }}" readonly name="name"
                                    placeholder="Blog Title" type="text" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Message</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="message" readonly placeholder="Blog Description">{{ $comment->message }}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">Status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status"
                                    {{ $comment->status == 1 ? 'checked' : '' }} type="radio" value="1"><label
                                    for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status"
                                    {{ $comment->status == 0 ? 'checked' : '' }} type="radio" value="0"><label
                                    for="Unpublished">unpublished</label>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Add New Blog</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
