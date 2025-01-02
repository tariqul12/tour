@extends('layouts.back-end.master')
@section('title','category page')

@section('body')
<!-- PAGE-HEADER -->
<div class="page-header">
        <div>
            <h1 class="page-title">Slider Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Add Slider</li>
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
                            <h3 class="fw-bold text-end">Add Slider Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{route('slider.index')}}" class="btn btn-primary rounded-0">All Slider</a>
                        </div>
                    </div>
                </div>

                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{session('message')}}</p>
                    <form action="{{route('slider.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                        @csrf
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Service</label>
                            <div class="col-md-9">
                                <select name="service_id" class="form-control" id="">
                                    <option value="">--select service--</option>
                                    @foreach($services as $service)
                                    <option value="{{$service->id}}">{{$service->title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Slider Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{old('name')}}" id="" name="title" placeholder="Slider Title" type="text" />
                                <span class="text-danger">{{$errors->has('name')?$errors->first('name'):''}}</span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="Code" class="col-md-3 form-label">Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="description" name="description" placeholder="Description" ></textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Slider Image</label>
                            <div class="col-md-9">
                                <input type="file" name="image" class="dropify" data-height="200"/>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status" checked type="radio" value="1"><label for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status" type="radio" value="0"><label for="Unpublished">unpublished</label>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Add New Slider</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
