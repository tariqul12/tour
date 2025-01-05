@extends('layouts.front-end.master')
@section('title', 'Destination Page')

@section('content')

    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($title_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">Destination</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <!-- destination field html end -->
    <section class="destination-section destination-page">
        <div class="container">
            <div class="destination-inner destination-three-column">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            @foreach ($destinations as $destination)
                                <div class="col-md-6">
                                    <div class="desti-item overlay-desti-item">
                                        <figure class="desti-image">
                                            <img style="width: 100%; height: 300px; object-fit: cover;"
                                                src="{{ asset($destination->image) }}" alt="">
                                        </figure>
                                        <div class="meta-cat bg-meta-cat">
                                            <a href="#">{{ $destination->destination }}</a>
                                        </div>
                                        <div class="desti-content">
                                            <div class="rating-start" title="Rated 3 out of 5">
                                                <span style="width: 100%"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>
    <!-- destination section html start -->
    <!-- subscribe section html start -->
    <section class="subscribe-section" style="background-image: url({{ asset('/') }}website/assets/images/img16.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="section-heading section-heading-white">
                        <h5 class="dash-style">HOLIDAY PACKAGE</h5>
                        <h2>Suscribtion</h2>
                        <h4>Sign up now to recieve hot special offers and information about the best tour packages, updates
                            and discounts !!</h4>
                        <div class="newsletter-form">
                            <form>
                                <input type="email" name="s" placeholder="Your Email Address">
                                <input type="submit" name="signup" value="SIGN UP NOW!">
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- subscribe html end -->

@endsection
