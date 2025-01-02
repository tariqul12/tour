@extends('layouts.back-end.master')
@section('title', 'Company page')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Company Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Company</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <form action="{{ route('about.update', $about->id) }}" method="POST" enctype="multipart/form-data"
        class="form-horizontal">
        @csrf
        @method('PUT')
        <div class="row justify-content-center">
            <div class="col-lg-12 shadow">
                <div class="card shadow rounded-0">

                    <div class="border-bottom py-5">
                        <div class="row">
                            <div class="col-6">
                                <h4 class="fw-bold ms-3">Add About Form</h4>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">About Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $about->title }}" name="title"
                                    placeholder="About Title" type="text" />
                                <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="summernote" name="description" placeholder="Description">{{ $about->description }}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">About Image One</label>
                            <div class="col-md-9">
                                <input type="file" name="image1" class="dropify" data-height="200" />
                                <img width="120" class="my-1" src="{{ asset($about->image1) }}" id=""
                                    alt="">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="iconInp" class="col-md-3 form-label">About Image tow</label>
                            <div class="col-md-9">
                                <input class="dropify" name="image2" type="file" data-height="200" />
                                <img width="120" class="my-1" src="{{ asset($about->image2) }}" id=""
                                    alt="">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Network Coverage Areas</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $about->network }}" name="network"
                                    placeholder="Network Coverage Areas" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Happy Customers</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $about->happy_customer }}" name="happy_customer"
                                    placeholder="happy customer" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Experienced Employees</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $about->employee }}" name="employee"
                                    placeholder="employee" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Certificate & Awards Winner</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $about->awards }}" name="awards"
                                    placeholder="Certificate & Awards Winner" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Update Company</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection
