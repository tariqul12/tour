@extends('layouts.back-end.master')
@section('title', 'Team page')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Team Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Team</li>
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
                            <h3 class="fw-bold text-end">Edit Team Form</h3>
                        </div>
                        <div class="col-5 text-end me-1">
                            <a href="{{ route('team.index') }}" class="btn btn-primary rounded-0">All Team</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-primary fw-bold fs-5">{{ session('message') }}</p>
                    <form action="{{ route('team.update', $team->id) }}" method="POST" enctype="multipart/form-data"
                        class="form-horizontal">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Team name</label>
                            <div class="col-md-9">
                                <input class="form-control" value="{{ $team->name }}" id="name" name="name"
                                    placeholder="team name" type="text">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="designation" class="col-md-3 form-label">Designation</label>
                            <div class="col-md-9">
                                <input class="form-control" type="text" value="{{ $team->designation }}" id="designation"
                                    name="designation" placeholder="Designation" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="facebook_link" class="col-md-3 form-label">facebook link</label>
                            <div class="col-md-9">
                                <input class="form-control" type="text" value="{{ $team->facebook_link }}"
                                    id="facebook_link" name="facebook_link" placeholder="facebook link" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="linkedin_link" class="col-md-3 form-label">linkedin link</label>
                            <div class="col-md-9">
                                <input class="form-control" type="text" id="linkedin_link"
                                    value="{{ $team->linkedin_link }}" name="linkedin_link" placeholder="Linkedin link" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="imgInp" class="col-md-3 form-label">Team Image</label>
                            <div class="col-md-9">
                                <input type="file" id="imgInp" class="dropify" name="image" data-height="200" />
                                <img width="120" class="my-1" src="{{ asset($team->image) }}" id="inputImage"
                                    alt="">
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label">status</label>
                            <div class="col-md-9">
                                <input class="" id="published" name="status"
                                    {{ $team->status == 1 ? 'checked' : '' }} type="radio" value="1"><label
                                    for="published">published</label>
                                <input class="mx-2" id="Unpublished" name="status"
                                    {{ $team->status == 0 ? 'checked' : '' }} type="radio" value="0"><label
                                    for="Unpublished">unpublished</label>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="radio" class="col-md-3 form-label"></label>
                            <div class="col-md-9">
                                <button class="btn btn-primary rounded-0" type="submit">Update Team</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
