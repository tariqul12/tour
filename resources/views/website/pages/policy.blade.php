@extends('layouts.front-end.master')
@section('title', 'Policy page')
@section('body')

    <!-- breadcrumb-area -->
    <section class="breadcrumb-area py-5" style="background-image: url('{{ asset($breadcrumb_banner->image) }}')">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-8">
                    <div class="breadcrumb-content">
                        <h3 class="title">Privacy & Policy</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Privacy & Policy</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb-area-end -->


    <!-- privacy-policy-start -->

    <div class="privacy-area section-space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="privacy-wrapper">

                        {!! $policy->description !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- privacy-policy-end -->

@endsection
