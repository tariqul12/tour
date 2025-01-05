@extends('layouts.front-end.master')
@section('title', 'About page')
@section('content')

    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($title_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">About us</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <!-- about section html start -->
    <section class="about-section about-page-section">
        <div class="about-service-wrap">
            <div class="container">
                <div class="section-heading">
                    <div class="row align-items-end">
                        <div class="col-lg-12">
                            <h5 class="dash-style">ABOUT US</h5>
                            <h2>{{ $about->title }}</h2>
                        </div>
                        <div class="col-lg-12 py-5">
                            <div class="section-disc">
                                <p>{!! $about->description !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-video-wrap" style="background-image: url({{ asset($about->image2) }});">
                    {{-- <div class="video-button">
                        <a id="video-container" data-video-id="IUN664s7N-c">
                            <i class="fas fa-play"></i>
                        </a>
                    </div> --}}
                </div>
            </div>
        </div>
        <!-- callback section html start -->
        <div class="fullwidth-callback" style="background-image: url({{ asset($footer_banner->image) }});">
            <div class="container">

                <div class="callback-counter-wrap">
                    <div class="counter-item">
                        <div class="counter-item-inner">
                            <div class="counter-icon">
                                <img src="{{ asset('/') }}website/assets/images/icon1.png" alt="">
                            </div>
                            <div class="counter-content">
                                <span class="counter-no">
                                    <span class="counter">{{ $about->happy_customer }}</span>K+
                                </span>
                                <span class="counter-text">
                                    Satisfied Clients
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="counter-item">
                        <div class="counter-item-inner">
                            <div class="counter-icon">
                                <img src="{{ asset('/') }}website/assets/images/icon2.png" alt="">
                            </div>
                            <div class="counter-content">
                                <span class="counter-no">
                                    <span class="counter">{{ $about->awards }}</span>K+
                                </span>
                                <span class="counter-text">
                                    Awards Achieve
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="counter-item">
                        <div class="counter-item-inner">
                            <div class="counter-icon">
                                <img src="{{ asset('/') }}website/assets/images/icon3.png" alt="">
                            </div>
                            <div class="counter-content">
                                <span class="counter-no">
                                    <span class="counter">{{ $about->members }}</span>K+
                                </span>
                                <span class="counter-text">
                                    Active Members
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="counter-item">
                        <div class="counter-item-inner">
                            <div class="counter-icon">
                                <img src="{{ asset('/') }}website/assets/images/icon4.png" alt="">
                            </div>
                            <div class="counter-content">
                                <span class="counter-no">
                                    <span class="counter">{{ $about->destinations }}</span>K+
                                </span>
                                <span class="counter-text">
                                    Tour Destnation
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- callback html end -->
    </section>
    <!-- about html end -->

@endsection
