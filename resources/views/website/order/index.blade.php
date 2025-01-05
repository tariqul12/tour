@extends('layouts.front-end.master')
@section('title', 'Order Now')

@section('content')
    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($order_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">Package Detail</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <div class="single-tour-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="single-tour-inner">
                        <h2>{{ $package->title }}</h2>
                        <figure class="feature-image">
                            <img width="100%" src="{{ asset($package->image) }}" alt="">
                            <div class="package-meta text-center">
                                <ul>
                                    <li>
                                        <i class="far fa-clock"></i>
                                        {{ $package->duration }} Day
                                    </li>

                                    <li>
                                        <i class="fas fa-map-marked-alt"></i>
                                        {{ $package->place }}
                                    </li>
                                </ul>
                            </div>
                        </figure>
                        <div class="tab-container">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="overview-tab" data-toggle="tab" href="#overview"
                                        role="tab" aria-controls="overview" aria-selected="true">DESCRIPTION</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="program-tab" data-toggle="tab" href="#program" role="tab"
                                        aria-controls="program" aria-selected="false">Image</a>
                                </li>
                                {{-- <li class="nav-item">
                                    <a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab"
                                        aria-controls="review" aria-selected="false">REVIEW</a>
                                </li>
                                 --}}
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="overview" role="tabpanel"
                                    aria-labelledby="overview-tab">
                                    <div class="overview-content">
                                        <p>{{ $package->short_description }}</p>
                                        <p>{!! $package->long_description !!}</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="program" role="tabpanel" aria-labelledby="program-tab">
                                    <div class="itinerary-content">
                                        <h3>Images <span></span></h3>

                                    </div>
                                    <div class="itinerary-timeline-wrap">
                                        <div class="row">
                                            @foreach ($package->otherImages as $image)
                                                <div class="col-md-4">
                                                    <img style="width: 100%; height: 300px; object-fit: cover;"
                                                        src="{{ asset($image->image) }}" alt="">
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="tab-pane" id="review" role="tabpanel" aria-labelledby="review-tab">
                                    <div class="summary-review">
                                        <div class="review-score">
                                            <span>4.9</span>
                                        </div>
                                        <div class="review-score-content">
                                            <h3>
                                                Excellent
                                                <span>( Based on 24 reviews )</span>
                                            </h3>
                                            <p>Tincidunt iaculis pede mus lobortis hendrerit eveniet impedit aenean mauris
                                                qui, pharetra rem doloremque laboris euismod deserunt non, cupiditate,
                                                vestibulum.</p>
                                        </div>
                                    </div>
                                    <!-- review comment html -->
                                    <div class="comment-area">
                                        <h3 class="comment-title">3 Reviews</h3>
                                        <div class="comment-area-inner">
                                            <ol>
                                                <li>
                                                    <figure class="comment-thumb">
                                                        <img src="{{ asset('/') }}website/assets/images/img20.jpg"
                                                            alt="">
                                                    </figure>
                                                    <div class="comment-content">
                                                        <div class="comment-header">
                                                            <h5 class="author-name">Tom Sawyer</h5>
                                                            <span class="post-on">Jana 10 2020</span>
                                                            <div class="rating-wrap">
                                                                <div class="rating-start" title="Rated 5 out of 5">
                                                                    <span style="width: 90%;"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p>Officia amet posuere voluptates, mollit montes eaque accusamus
                                                            laboriosam quisque cupidatat dolor pariatur, pariatur auctor.
                                                        </p>
                                                        <a href="#" class="reply"><i
                                                                class="fas fa-reply"></i>Reply</a>
                                                    </div>
                                                </li>
                                                <li>
                                                    <ol>
                                                        <li>
                                                            <figure class="comment-thumb">
                                                                <img src="{{ asset('/') }}website/assets/images/img21.jpg"
                                                                    alt="">
                                                            </figure>
                                                            <div class="comment-content">
                                                                <div class="comment-header">
                                                                    <h5 class="author-name">John Doe</h5>
                                                                    <span class="post-on">Jana 10 2020</span>
                                                                    <div class="rating-wrap">
                                                                        <div class="rating-start" title="Rated 5 out of 5">
                                                                            <span style="width: 90%"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <p>Officia amet posuere voluptates, mollit montes eaque
                                                                    accusamus laboriosam quisque cupidatat dolor pariatur,
                                                                    pariatur auctor.</p>
                                                                <a href="#" class="reply"><i
                                                                        class="fas fa-reply"></i>Reply</a>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </li>
                                            </ol>
                                            <ol>
                                                <li>
                                                    <figure class="comment-thumb">
                                                        <img src="{{ asset('/') }}website/assets/images/img22.jpg"
                                                            alt="">
                                                    </figure>
                                                    <div class="comment-content">
                                                        <div class="comment-header">
                                                            <h5 class="author-name">Jaan Smith</h5>
                                                            <span class="post-on">Jana 10 2020</span>
                                                            <div class="rating-wrap">
                                                                <div class="rating-start" title="Rated 5 out of 5">
                                                                    <span></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p>Officia amet posuere voluptates, mollit montes eaque accusamus
                                                            laboriosam quisque cupidatat dolor pariatur, pariatur auctor.
                                                        </p>
                                                        <a href="#" class="reply"><i
                                                                class="fas fa-reply"></i>Reply</a>
                                                    </div>
                                                </li>
                                            </ol>
                                        </div>
                                        <div class="comment-form-wrap">
                                            <h3 class="comment-title">Leave a Review</h3>
                                            <form class="comment-form">
                                                <div class="full-width rate-wrap">
                                                    <label>Your rating</label>
                                                    <div class="procduct-rate">
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <p>
                                                    <input type="text" name="name" placeholder="Name">
                                                </p>
                                                <p>
                                                    <input type="text" name="name" placeholder="Last name">
                                                </p>
                                                <p>
                                                    <input type="email" name="email" placeholder="Email">
                                                </p>
                                                <p>
                                                    <input type="text" name="subject" placeholder="Subject">
                                                </p>
                                                <p>
                                                    <textarea rows="6" placeholder="Your review"></textarea>
                                                </p>
                                                <p>
                                                    <input type="submit" name="submit" value="Submit">
                                                </p>
                                            </form>
                                        </div>
                                    </div>
                                </div> --}}
                            </div>
                        </div>
                        <div class="single-tour-gallery">
                            <h3>GALLERY / PHOTOS</h3>
                            <div class="single-tour-slider">
                                @foreach ($gellares as $gallery)
                                    <div class="single-tour-item">
                                        <figure class="feature-image">
                                            <img src="{{ asset($gallery->image) }}" alt="">
                                        </figure>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar">
                        <div class="package-price">
                            <h5 class="price">
                                <span>{{ $package->single_price }} Taka</span> / per person
                            </h5>
                            <h5 class="price">
                                <span>{{ $package->couple_price }} Taka</span> / per couple
                            </h5>

                        </div>
                        <div class="widget-bg booking-form-wrap">
                            <h4 class="bg-title">Booking</h4>
                            <form class="booking-form" action="{{ route('package.order') }}" method="POST">
                                @csrf
                                <input type="hidden" name="package_id" value="{{ $package->id }}">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <input name="name" type="text" placeholder="Full Name">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <input name="email" type="text" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <input name="mobile" type="number" placeholder="Mobile">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <input name="address" type="text" placeholder="address">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <input class="input-date-picker" type="text" name="date"
                                                autocomplete="off" readonly="readonly" placeholder="Date">
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="form-group submit-btn">
                                            <input type="submit" name="submit" value="Boook Now">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="travel-package-content text-center"
                            style="background-image: url({{ asset('/') }}website/assets/images/cox.png);">
                            <h5>MORE PACKAGES</h5>
                            <h3>OTHER TRAVEL PACKAGES</h3>
                            <ul>
                                @foreach ($packages as $package)
                                    <li>
                                        <a href="{{ route('packageOrder', $package->id) }}"><i
                                                class="far fa-arrow-alt-circle-right"></i>{{ $package->title }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- subscribe section html start -->

@endsection

@push('script')
@endpush
