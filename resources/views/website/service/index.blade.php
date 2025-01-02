@extends('layouts.front-end.master')
@section('title', 'Service page')
@section('content')

    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">

        <div class="title">
            <h2>Services</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">Services</span>
        </div>

    </div>
    <!-- ==================== Page-Title (End) ==================== -->



    <!-- ==================== Services Area (Start) ==================== -->
    <section class="services">

        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>What We Offer</span><i class="fa-solid fa-wifi"></i>
            </div>
            <h2>Our Services</h2>
        </div>

        <!-- Services Container -->
        <div class="box-container">

            @foreach ($services as $service)
                <!-- Service 1: Internet Plans -->
                <div class="service-item">
                    <img src="{{ asset($service->image) }}" alt="Internet Plans">
                    <!-- Service Image -->
                    <div class="content">
                        <i class="fa-solid fa-wifi"></i> <!-- Internet Icon -->
                        <a href="{{ route('service-detail', $service->id) }}">
                            <h3>{{ $service->title }}</h3>
                        </a> <!-- Service Title -->
                        <p>{{ $service->short_description }}</p>
                        <!-- Service Description -->
                        <a href="{{ route('service-detail', $service->id) }}" class="btn">Read More</a>
                    </div>
                </div>
            @endforeach

        </div>

    </section>
    <!-- ==================== Services Area (End) ==================== -->




@endsection
