@extends('layouts.back-end.master')
@section('title','Service page')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Service Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Service Detail</li>
            </ol>
        </div>
    </div>
    <!--row-->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card rounded-0">
                <div class="border-bottom py-5">
                    <div class="row">
                        <div class="col-6">
                            <h3 class="fw-bold text-end">Service detail</h3>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>ID</th>
                            <td>{{ $service->id }}</td>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <td>{{ $service->title }}</td>
                        </tr>
                        <tr>
                            <th>Short Description</th>
                            <td>{{ $service->short_description }}</td>
                        </tr>
                        <tr>
                            <th>Long Description</th>
                            <td>{!! $service->long_description !!}</td>
                        </tr>
                        <tr>
                            <th>Search Keyword</th>
                            <td>{!! $service->search_keyword !!}</td>
                        </tr>
                        <tr>
                            <th>Meta Title</th>
                            <td>{!! $service->meta_title !!}</td>
                        </tr>
                        <tr>
                            <th>Meta Description</th>
                            <td>{!! $service->meta_description !!}</td>
                        </tr>
                        <tr>
                            <th>Image</th>
                            <td>
                                <img src="{{asset($service->image)}}" height="200" alt="image" />
                            </td>
                        </tr>
                        <tr>
                            <th>Feather Status</th>
                            <td>{{$service->feather_status}}</td>
                        </tr>
                        <tr>
                            <th>Home Status</th>
                            <td>{{$service->home_status}}</td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>{{$service->status}}</td>
                        </tr>
                        <tr>
                            <th>Order Status</th>
                            <td>{{$service->order_status}}</td>
                        </tr>
                        <tr>
                            <th>Other Image</th>
                            <td>
                                @foreach($service->otherImages as $other_image)
                                    <img src="{{asset($other_image->image)}}" height="200" alt="" />
                                @endforeach
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection
