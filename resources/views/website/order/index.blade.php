@extends('layouts.front-end.master')
@section('title', 'Order Now')

@section('content')

    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">

        <div class="title">
            <h2>Order Now</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">Order Now</span>
        </div>

    </div>
    <!-- ==================== Page-Title (End) ==================== -->

    <!-- ==================== Order Form Area (Start) ==================== -->
    <section class="custom-form order-form linear-bg">
        <div class="box-container"
            style="background-image: linear-gradient(rgba(0, 0, 0, 0.514), rgba(0, 0, 0, 0.514)), 
                      url('{{ asset($order_banner->image) }}');">

            <div class="content">
                <p>{{ Session('message') }}</p>

                <form method="post" class="dark-form" id="contact-form" action="{{ route('package.order') }}">
                    @csrf
                    <!-- Form Heading -->
                    <div class="heading">
                        <div class="sub"><span>Order Your Package</span><i class="fa-solid fa-wifi"></i></div>
                        <!-- Sub Heading -->
                        <h2>Request an Order</h2>
                    </div>

                    <div class="input-box">

                        <!-- Name Input Field -->
                        <div class="input-field">
                            <label for="name" class="fas fa-user"></label>
                            <input type="text" name="name" class="box" id="name" placeholder="Name" required>
                        </div>

                        <!-- Email Input Field -->
                        <div class="input-field">
                            <label for="email" class="fa-solid fa-envelope"></label>
                            <input type="email" name="email" class="box" id="email" placeholder="Email" required>
                        </div>

                    </div>

                    <div class="input-box">

                        <!-- Phone Number Input Field -->
                        <div class="input-field">
                            <label for="number" class="fas fa-phone"></label>
                            <input type="text" name="mobile" class="box" id="number" placeholder="Phone Number"
                                required>
                        </div>

                        <!-- Subject Input Field -->
                        <div class="input-field">
                            <label for="subject" class="fas fa-phone"></label>
                            <select name="package_id" class="box package" id="package" required>
                                <option value="">Choose Your Package</option>
                                @foreach ($packages as $package)
                                    <option value="{{ $package->id }}">
                                        {{ $package->price . ' TK' . '-' . $package->speed . 'Mbps' }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                    </div>

                    <div class="input-box">
                        <div class="input-field text-area">
                            <label for="comment" class="fas fa-address"></label>
                            <textarea cols="30" rows="10" name="address" class="box" id="address" placeholder="Address" required></textarea>
                        </div>
                    </div>
                    <!-- Comment/Message Textarea -->
                    <div class="input-box">
                        <div class="input-field text-area">
                            <label for="comment" class="fas fa-comment"></label>
                            <textarea cols="30" rows="10" name="message" class="box" id="comment" placeholder="Message" required></textarea>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn" id="submit">Order</button>

                    <!-- Alert Message -->
                    <span class="alert" id="msg"></span>

                </form>

            </div>

        </div>

    </section>
    <!-- ==================== Order Form Area (End) ==================== -->

@endsection

@push('script')
@endpush
