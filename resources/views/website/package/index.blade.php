@extends('layouts.front-end.master')
@section('title', 'Tour packages')
@section('content')

    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($title_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">Tour Packages</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <!-- packages html start -->
    <div class="package-section">
        <div class="container">
            <div class="package-inner">
                <div class="row">
                    @foreach ($packages as $package)
                        <div class="col-lg-4 col-md-6">
                            <div class="package-wrap">
                                <figure class="feature-image">
                                    <a href="{{ route('packageOrder', $package->id) }}">
                                        <img style="width: 100%; height: 300px; " src="{{ asset($package->image) }}"
                                            alt="">
                                    </a>
                                </figure>
                                <div class="package-price">
                                    <h6>
                                        <span> {{ $package->single_price }} Taka</span> / per person
                                    </h6>
                                    {{-- <h6>
                                    <span>Taka {{ $package->couple_price }}</span> / per couple
                                </h6> --}}
                                </div>
                                <div class="package-content-wrap">
                                    <div class="package-meta text-center">
                                        <ul>

                                            <li>
                                                <i class="fas fa-clock"></i>
                                                {{ $package->duration }} Day
                                            </li>
                                            <li>
                                                <i class="fas fa-map-marker-alt"></i>
                                                {{ $package->place }}
                                            </li>
                                            <li>
                                                <i class="fas fa-calendar-alt"></i>
                                                {{ $package->tour_start_date }}
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="package-content">
                                        <h3>
                                            <a
                                                href="{{ route('packageOrder', $package->id) }}">{{ Str::limit($package->title, 40) }}</a>
                                        </h3>

                                        <p>{{ Str::substr($package->short_description, 0, 100) }}</p>
                                        <div class="btn-wrap">
                                            <a href="{{ route('packageOrder', $package->id) }}"
                                                class="button-text width-6">Details<i class="fas fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- packages html end -->
    <!-- Home activity section html start -->
    <section class="activity-section">
        <div class="container">
            <div class="section-heading text-center">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h5 class="dash-style">TRAVEL BY ACTIVITY</h5>
                        <h2>ADVENTURE & ACTIVITY</h2>

                    </div>
                </div>
            </div>
            <div class="activity-inner row">
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="activity-item">
                        <div class="activity-icon">
                            <a href="#">
                                <img src="{{ asset('/') }}website/assets/images/icon6.png" alt="">
                            </a>
                        </div>
                        <div class="activity-content">
                            <h4>
                                <a href="#">Adventure</a>
                            </h4>
                            <p>15 Destination</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="activity-item">
                        <div class="activity-icon">
                            <a href="#">
                                <img src="{{ asset('/') }}website/assets/images/icon10.png" alt="">
                            </a>
                        </div>
                        <div class="activity-content">
                            <h4>
                                <a href="#">Trekking</a>
                            </h4>
                            <p>12 Destination</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="activity-item">
                        <div class="activity-icon">
                            <a href="#">
                                <img src="{{ asset('/') }}website/assets/images/icon9.png" alt="">
                            </a>
                        </div>
                        <div class="activity-content">
                            <h4>
                                <a href="#">Camp Fire</a>
                            </h4>
                            <p>7 Destination</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="activity-item">
                        <div class="activity-icon">
                            <a href="#">
                                <img src="{{ asset('/') }}website/assets/images/icon8.png" alt="">
                            </a>
                        </div>
                        <div class="activity-content">
                            <h4>
                                <a href="#">Off Road</a>
                            </h4>
                            <p>15 Destination</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="activity-item">
                        <div class="activity-icon">
                            <a href="#">
                                <img src="{{ asset('/') }}website/assets/images/icon7.png" alt="">
                            </a>
                        </div>
                        <div class="activity-content">
                            <h4>
                                <a href="#">Camping</a>
                            </h4>
                            <p>13 Destination</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="activity-item">
                        <div class="activity-icon">
                            <a href="#">
                                <img src="{{ asset('/') }}website/assets/images/icon11.png" alt="">
                            </a>
                        </div>
                        <div class="activity-content">
                            <h4>
                                <a href="#">Exploring</a>
                            </h4>
                            <p>25 Destination</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- activity html end -->

@endsection
