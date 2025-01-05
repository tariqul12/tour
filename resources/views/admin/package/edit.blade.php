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
                            <label for="duration" class="col-md-3 form-label">Duration</label>
                            <div class="col-md-9">
                                <input class="form-control" id="duration" value="{{ $package->duration }}" name="duration"
                                    placeholder="duration" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package single price</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->single_price }}"
                                    name="single_price" placeholder="Package single price" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package couple price</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->couple_price }}"
                                    name="couple_price" placeholder="Package Couple Price" type="number" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Package Destination</label>
                            <div class="col-md-9">
                                <input class="form-control" id="" value="{{ $package->place }}" name="place"
                                    placeholder="Package Destination" type="text" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Short Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="" name="short_description" placeholder="">{{ $package->short_description }}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Long Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="summernote" name="long_description" placeholder="">{{ $package->long_description }}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="tour_start_date" class="col-md-3 form-label">Tour Start Date</label>
                            <div class="col-md-9">
                                <input class="form-control" id="tour_start_date" value="{{ $package->tour_start_date }}"
                                    name="tour_start_date" placeholder="tour start date" type="date" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="tour_end_date" class="col-md-3 form-label">Tour End Date</label>
                            <div class="col-md-9">
                                <input class="form-control" id="tour_end_date" value="{{ $package->tour_end_date }}"
                                    name="tour_end_date" placeholder="tour end date" type="date" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Package Image</label>
                            <div class="col-md-9">
                                <input type="file" id="imgInp" class="dropify" name="image"
                                    data-height="200" />
                                <img width="120" class="my-1" src="{{ asset($package->image) }}" id=""
                                    alt="">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Package Other Image</label>
                            <div class="col-md-9">
                                <input type="file" id="" class="form-control" name="other_image[]" multiple
                                    accept="image/*" data-height="200" />
                                @foreach ($package->otherImages as $otherImage)
                                    <img width="120" class="my-1" src="{{ asset($otherImage->image) }}"
                                        alt="">
                                @endforeach
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
