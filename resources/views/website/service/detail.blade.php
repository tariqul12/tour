@extends('layouts.front-end.master')
@section('title', 'Detail page')
@section('content')

    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">

        <div class="title">
            <h2>Service Single</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">Service Single</span>
        </div>

    </div>
    <!-- ==================== Page-Title (End) ==================== -->

    <!-- ==================== Service Single (Start) ==================== -->
    <section class="service-single page-single">

        <!-- ========== Service Sidebar Area (Start) ========== -->
        <div class="sidebar">

            <div class="category sidebar-item">

                <!-- Sidebar Heading -->
                <div class="sidebar-heading">
                    <h2>All Services</h2>
                </div>

                <!-- Services List -->
                <div class="box-container">
                    @foreach ($services as $service)
                        <a href="{{ route('service-detail', $service->id) }}"><span><i
                                    class="fa-solid fa-wifi"></i>{{ $service->title }}</span></a>
                    @endforeach
                </div>

            </div>

        </div>
        <!-- ========== Service Sidebar Area (End) ========== -->

        <!-- ========== Service Info Container (Start) ========== -->
        <div class="service-info page-info">

            <!-- Service Image -->
            <div class="image">
                <img src="{{ asset($service->image) }}" alt="Internet Plans">
            </div>

            <div class="content">

                <!-- Service Main Heading -->
                <h3 class="main-heading">{{ $service->title }}</h3>

                <!-- Service Description -->
                <p>{!! $service->long_description !!}</p>

            </div>

        </div>
        <!-- ========== Service Info Container (End) ========== -->

    </section>

    <!-- ==================== Service Single (End) ==================== -->


@endsection
