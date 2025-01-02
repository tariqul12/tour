@extends('layouts.back-end.master')
@section('title', 'Website Company')
@section('body')

    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Company Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Company</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Company</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Company Form</h3>
                </div>
                <div class="card-body">
                    <p class="text-muted">{{ session('message') }}</p>
                    <form class="form-horizontal" action="{{ route('company.store') }}" method="post"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-4">
                            <label for="name" class="col-md-3 form-label">Company Name</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="company_name" id="name"
                                    placeholder="Company Name" type="text" />
                                <span
                                    class="text-danger">{{ $errors->has('company_name') ? $errors->first('company_name') : '' }}</span>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="companySlogan" class="col-md-3 form-label">Company Slogan</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="slogan" id="companySlogan"
                                    placeholder="Company slogan" type="text" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="companyTitle" class="col-md-3 form-label">Company Title</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="title" id="companyTitle"
                                    placeholder="Company Title" type="text" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="contact_phone" class="col-md-3 form-label">Contact Phone</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="contact_phone" id="contact_phone"
                                    placeholder="Company contact_phone" type="number" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="support_phone" class="col-md-3 form-label">Support Phone</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="support_phone" id="support_phone"
                                    placeholder="Company support_phone" type="number" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="contact_email" class="col-md-3 form-label">Contact Email</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="contact_email" id="contact_email"
                                    placeholder="Company contact_email" type="email" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="support_email" class="col-md-3 form-label">Support Email</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="support_email" id="support_email"
                                    placeholder="Company support_email" type="email" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="office_hour" class="col-md-3 form-label">Office Hour </label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="office_hour" id="office_hour"
                                    placeholder="Company office_hour" type="text" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="facebook_link" class="col-md-3 form-label">Facebook Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="facebook_link" id="facebook_link"
                                    placeholder="Company facebook_link" type="text" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="twitter_link" class="col-md-3 form-label">Twitter Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="twitter_link" id="twitter_link"
                                    placeholder="Company twitter_link" type="text" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="linkedin_link" class="col-md-3 form-label">LinkedIn Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="linkedin_link" id="linkedin_link"
                                    placeholder="Company linkedin_link" type="text" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="youtube_link" class="col-md-3 form-label">Youtube Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="youtube_link" id="youtube_link"
                                    placeholder="Company youtube_link" type="text" />

                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="instagram_link" class="col-md-3 form-label">Instagram Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="instagram_link" id="instagram_link"
                                    placeholder="Company Instagram link" type="text" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="google_map_api_link" class="col-md-3 form-label">Google Map Api Link</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="google_map_api_link" placeholder="Google Map Api Link" type="text"></textarea>

                            </div>
                        </div>

                        {{-- <div class="row mb-4">
                            <label for="android_app_image" class="col-md-3 form-label">Android App Image </label>
                            <div class="col-md-9">
                                <input type="file" class="dropify" id="android_app_image" name="android_app_image"  data-height="200" />
                            </div>
                        </div> --}}

                        {{-- <div class="row mb-4">
                            <label for="android_app_url" class="col-md-3 form-label">Android App Url Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="android_app_url" id="android_app_url" placeholder="Android App Url Link" type="text"/>
                            </div>
                        </div> --}}

                        {{-- <div class="row mb-4">
                            <label for="ios_app_image" class="col-md-3 form-label">Ios App Image </label>
                            <div class="col-md-9">
                                <input type="file" class="dropify" id="ios_app_image" name="ios_app_image"  data-height="200" />
                            </div>
                        </div> --}}

                        {{-- <div class="row mb-4">
                            <label for="ios_app_url" class="col-md-3 form-label">Ios App Url Link</label>
                            <div class="col-md-9">
                                <input class="form-control" value="" name="ios_app_url" id="ios_app_url" placeholder="Ios App Url Link" type="text"/>

                            </div>
                        </div> --}}

                        <div class="row mb-4">
                            <label for="companyAddress" class="col-md-3 form-label">Company Address</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="company_address" id="companyAddress" placeholder="Company Address"></textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="logo_jpg" class="col-md-3 form-label">Logo Jpg </label>
                            <div class="col-md-9">
                                <input type="file" class="dropify" id="logo_jpg" name="logo_jpg"
                                    data-height="200" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="logo_png" class="col-md-3 form-label">Logo Png </label>
                            <div class="col-md-9">
                                <input type="file" class="dropify" id="logo_png" name="logo_png"
                                    data-height="200" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label for="favicon" class="col-md-3 form-label">Logo Favicon </label>
                            <div class="col-md-9">
                                <input type="file" class="dropify" id="favicon" name="favicon"
                                    data-height="200" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="payment_method_image" class="col-md-3 form-label">Payment Method Image</label>
                            <div class="col-md-9">
                                <input type="file" class="dropify" id="payment_method_image"
                                    name="payment_method_image" data-height="200" />
                            </div>
                        </div>
                        <button class="btn btn-primary rounded-0 float-end" type="submit">Update Information</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
