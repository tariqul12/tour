@extends('layouts.front-end.master')
@section('title', 'Travel & Tour')

@section('content')

    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($title_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">Gallery</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <!-- gallery section html start -->
    <div class="gallery-section">
        <div class="container">
            <div class="gallery-outer-wrap">
                <div class="gallery-inner-wrap gallery-container grid">
                    @foreach ($gallerys as $gallery)
                        <div class="single-gallery grid-item">
                            <figure class="gallery-img">
                                <img src="{{ asset($gallery->image) }}" alt="">
                                <div class="gallery-title">
                                    <h3>
                                        <a href="{{ asset($gallery->image) }}" data-lightbox="lightbox-set">
                                            {{ $gallery->title }}
                                        </a>
                                    </h3>
                                </div>
                            </figure>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- gallery section html end -->
    <div class="bg-color-callback">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-9 col-md-8">
                    <div class="callback-content">
                        <h2>LET'S JOIN US FOR MORE UPDATE & INFO !!</h2>

                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="button-wrap">
                        <a href="{{ route('contact') }}" class="button-primary">LEARN MORE</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
