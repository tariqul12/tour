@extends('layouts.front-end.master')
@section('title', 'Travel & Tour')

@section('content')
    <!-- Home slider html start -->
    <section class="home-slider-section">
        <div class="home-slider">
            @foreach ($sliders as $slider)
                <div class="home-banner-items">
                    <div class="banner-inner-wrap" style="background-image: url({{ asset($slider->image) }});">
                    </div>
                    <div class="banner-content-wrap">
                        <div class="container">
                            <div class="banner-content text-center">
                                <h2 class="banner-title">{{ $slider->title }}</h2>
                                <p>{{ $slider->description }}</p>
                                <a href="{{ route('packageOrder', $slider->service_id) }}" class="button-primary">CONTINUE
                                    READING</a>
                            </div>
                        </div>
                    </div>
                    <div class="overlay"></div>
                </div>
            @endforeach
        </div>
    </section>
    <!-- slider html start -->

    <section class="destination-section pt-5">
        <div class="container">
            <div class="section-heading">
                <div class="row align-items-end">
                    <div class="col-lg-7">
                        <h5 class="dash-style">POPULAR DESTINATION</h5>
                        <h2>TOP NOTCH DESTINATION</h2>
                    </div>

                </div>
            </div>
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
                <div class="btn-wrap text-center">
                    <a href="{{ route('destination.view') }}" class="button-primary">MORE DESTINATION</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Home packages section html start -->
    <section class="package-section">
        <div class="container">
            <div class="section-heading text-center">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h5 class="dash-style">EXPLORE GREAT PLACES</h5>
                        <h2>POPULAR PACKAGES</h2>

                    </div>
                </div>
            </div>
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
                                                class="button-text width-6">Detail<i class="fas fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="btn-wrap text-center">
                    <a href="{{ route('packeages') }}" class="button-primary">VIEW ALL PACKAGES</a>
                </div>
            </div>
        </div>
    </section>
    <!-- packages html end -->
    <!-- Home callback section html start -->
    <section class="callback-section">
        <div class="container">
            <div class="row no-gutters align-items-center">
                <div class="col-lg-5">
                    <div class="callback-img">
                        {{-- <div class="video-button">
                            <a id="video-container" data-video-id="IUN664s7N-c">
                                <i class="fas fa-play"></i>
                            </a>
                        </div> --}}
                        <img src="{{ asset($about->image2) }}" alt="">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="callback-inner">
                        <div class="section-heading section-heading-white">
                            <h5 class="dash-style">ABOUT US</h5>
                            <h2>{{ $about->title }}</h2>
                            <p>{!! $about->description !!}</p>
                        </div>
                        <div class="callback-counter-wrap">
                            <div class="counter-item">
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
                            <div class="counter-item">
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
                            <div class="counter-item">
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
                            <div class="counter-item">
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
                        <div class="support-area">
                            <div class="support-icon">
                                <img src="{{ asset('/') }}website/assets/images/icon5.png" alt="">
                            </div>
                            <div class="support-content">
                                <h4>Our 24/7 Emergency Phone Services</h4>
                                <h3>
                                    <a href="#">Call: {{ $company_front->contact_phone }}</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- callback html end -->
    <!-- Home activity section html start -->
    <section class="activity-section">
        <div class="container">
            <div class="section-heading text-center">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h5 class="dash-style">TRAVEL BY ACTIVITY</h5>
                        <h2>ADVENTURE & ACTIVITY</h2>
                        <p>Mollit voluptatem perspiciatis convallis elementum corporis quo veritatis aliquid
                            blandit, blandit torquent, odit placeat. Adipiscing repudiandae eius cursus? Nostrum
                            magnis maxime curae placeat.</p>
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
    <!-- Home special section html start -->
    <section class="best-section mb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="section-heading">
                        <h5 class="dash-style">OUR TOUR GALLERY</h5>
                        <h2>BEST TRAVELER'S SHARED PHOTOS</h2>
                    </div>
                    <figure class="gallery-img">
                        <img src="{{ asset($gallerysingle->image) }}" alt="">
                    </figure>
                </div>
                <div class="col-lg-7">
                    <div class="row">
                        @foreach ($gallerys as $gallery)
                            <div class="col-sm-6">
                                <figure class="gallery-img">
                                    <img src="{{ asset($gallery->image) }}" alt="">
                                </figure>
                            </div>
                        @endforeach
                    </div>

                </div>

            </div>
        </div>
        </div>
    </section>
    <!-- best html end -->
    <!-- Home client section html start -->
    {{-- <div class="client-section">
        <div class="container">
            <div class="client-wrap client-slider secondary-bg">
                <div class="client-item">
                    <figure>
                        <img src="{{ asset('/') }}website/assets/images/logo1.png" alt="">
                    </figure>
                </div>
                <div class="client-item">
                    <figure>
                        <img src="{{ asset('/') }}website/assets/images/logo2.png" alt="">
                    </figure>
                </div>
                <div class="client-item">
                    <figure>
                        <img src="{{ asset('/') }}website/assets/images/logo3.png" alt="">
                    </figure>
                </div>
                <div class="client-item">
                    <figure>
                        <img src="{{ asset('/') }}website/assets/images/logo4.png" alt="">
                    </figure>
                </div>
                <div class="client-item">
                    <figure>
                        <img src="{{ asset('/') }}website/assets/images/logo5.png" alt="">
                    </figure>
                </div>
                <div class="client-item">
                    <figure>
                        <img src="{{ asset('/') }}website/assets/images/logo2.png" alt="">
                    </figure>
                </div>
            </div>
        </div>
    </div> --}}
    <!-- client html end -->
    <!-- Home subscribe section html start -->
    <section class="subscribe-section" style="background-image: url({{ asset($home_banner->image) }});">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="section-heading section-heading-white">
                        <h5 class="dash-style">HOLIDAY PACKAGE</h5>
                        <h2>Suscribtion</h2>
                        <h4>Sign up now to recieve hot special offers and information about the best tour
                            packages, updates and discounts !!</h4>
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
    <!-- Home blog section html start -->
    <section class="blog-section">
        <div class="container">
            <div class="section-heading text-center">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h5 class="dash-style">FROM OUR CLIENTS</h5>
                        <h2>OUR CLIENTS SAY</h2>

                    </div>
                </div>
            </div>
            <!-- Home testimonial section html start -->
            <div class="testimonial-section"
                style="background-image: url({{ asset('/') }}website/assets/images/img23.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">
                            <div class="testimonial-inner testimonial-slider">
                                @foreach ($clients as $client)
                                    <div class="testimonial-item text-center">
                                        <figure class="testimonial-img">
                                            <img src="{{ asset($client->image) }}" alt="">
                                        </figure>
                                        <div class="testimonial-content">
                                            <p>" {{ $client->message }} "</p>
                                            <cite>
                                                {{ $client->name }}
                                                <span class="company">{{ $client->company }}</span>
                                            </cite>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- testimonial html end -->
        </div>
    </section>
    <!-- blog html end -->

    <!-- Home contact details section html start -->
    <section class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact-img" style="background-image: url({{ asset($gallerysingle->image) }});">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="contact-details-wrap">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="contact-details">
                                    <div class="contact-icon">
                                        <img src="{{ asset('/') }}website/assets/images/icon12.png" alt="">
                                    </div>
                                    <ul>
                                        <li>
                                            <a href="#">{{ $company_front->contact_email }}</a>
                                        </li>
                                        <li>
                                            <a href="#">{{ $company_front->support_email }}</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="contact-details">
                                    <div class="contact-icon">
                                        <img src="{{ asset('/') }}website/assets/images/icon13.png" alt="">
                                    </div>
                                    <ul>
                                        <li>
                                            <a href="#">{{ $company_front->contact_phone }}</a>
                                        </li>
                                        <li>
                                            <a href="#">{{ $company_front->support_phone }}</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="contact-details">
                                    <div class="contact-icon">
                                        <img src="{{ asset('/') }}website/assets/images/icon14.png" alt="">
                                    </div>
                                    <ul>

                                        <li>{{ $company_front->company_address }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-btn-wrap">
                        <h3>LET'S JOIN US FOR MORE UPDATE !!</h3>
                        <a href="{{ route('contact') }}" class="button-primary">LEARN MORE</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  contact details html end -->

@endsection

@push('script')
@endpush
