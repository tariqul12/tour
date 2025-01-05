@extends('layouts.front-end.master')
@section('title', 'Booking')
@section('content')

    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($order_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">Booking</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <div class="step-section booking-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 right-sidebar">
                    <!-- step one form html start -->
                    <form action="{{ route('package.order') }}" method="POST">
                        <div class="booking-form-wrap">
                            <div class="booking-content">
                                <div class="form-title">
                                    <span>1</span>
                                    <h3>Your Details</h3>
                                </div>

                                @csrf
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Your name*</label>
                                            <input type="text" class="form-control" name="name">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Email*</label>
                                            <input type="email" class="form-control" name="email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Mobile*</label>
                                            <input type="number" class="form-control" name="mobile">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Select Package*</label>
                                            <select name="package_id" id="" class="form-control" required>
                                                <option value="">Select your package</option>
                                                @foreach ($packages as $package)
                                                    <option value="{{ $package->id }}">{{ $package->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            {{-- <div class="booking-content">
                            <div class="form-title">
                                <span>2</span>
                                <h3>Payment Information</h3>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Name on card*</label>
                                        <input type="text" class="form-control" name="firstname_booking">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="row align-items-center">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Card number*</label>
                                                <input type="text" id="card_number" name="card_number"
                                                    class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <img src="{{ asset('/') }}website/assets/images/cards.png" alt="Cards">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Expiration date*</label>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" id="expire_month" name="expire_month"
                                                            class="form-control" placeholder="MM">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" id="expire_year" name="expire_year"
                                                            class="form-control" placeholder="Year">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Security code*</label>
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="form-group">
                                                            <input type="text" id="ccv" name="ccv"
                                                                class="form-control" placeholder="CCV">
                                                        </div>
                                                    </div>
                                                    <div class="col-8">
                                                        <img src="{{ asset('/') }}website/assets/images/icon_ccv.gif"
                                                            alt="ccv"><small>Last 3
                                                            digits</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="info-content">
                                <h4>Or checkout with Paypal</h4>
                                <p>Lorem ipsum dolor sit amet, vim id accusata sensibus, id ridens quaeque qui. Ne qui
                                    vocent ornatus molestie, reque fierent dissentiunt mel ea.</p>
                                <a href="#">
                                    <img src="{{ asset('/') }}website/assets/images/paypal_bt.html" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="booking-content">
                            <div class="form-title">
                                <span>3</span>
                                <h3>Billing Address</h3>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Country*</label>
                                        <select class="form-control" name="country" id="country">
                                            <option value="" selected="">Select your country</option>
                                            <option value="Europe">Europe</option>
                                            <option value="United states">United states</option>
                                            <option value="Asia">Asia</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Street line 1*</label>
                                        <input type="text" name="street_1">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Street line 2</label>
                                        <input type="text" name="street_2">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label>City*</label>
                                        <input type="text" name="city_booking">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <label>State*</label>
                                        <input type="text" name="state_booking">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6">
                                    <div class="form-group">
                                        <label>Postal code*</label>
                                        <input type="text" name="postal_code">
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <label>Additional Information</label>
                                        <textarea rows="6" placeholder="Notes about your order, e.g. special notes for delivery"></textarea>
                                    </div>
                                </div>
                            </div>
                            <!--End row -->
                        </div> --}}
                            <div class="form-policy">
                                <button type="submit" class="button-primary">Book Now</button>
                            </div>
                        </div>
                    </form>
                    <!-- step one form html end -->
                </div>
                <div class="col-lg-4">
                    <aside class="sidebar">
                        {{-- <div class="widget-bg widget-table-summary">
                            <h4 class="bg-title">Summary</h4>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>
                                            <strong>Packages cost </strong>
                                        </td>
                                        <td class="text-right">
                                            $300
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Dedicated tour guide</strong>
                                        </td>
                                        <td class="text-right">
                                            $34
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Insurance</strong>
                                        </td>
                                        <td class="text-right">
                                            $34
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>tax</strong>
                                        </td>
                                        <td class="text-right">
                                            13%
                                        </td>
                                    </tr>
                                    <tr class="total">
                                        <td>
                                            <strong>Total cost</strong>
                                        </td>
                                        <td class="text-right">
                                            <strong>$368</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> --}}
                        <div class="widget-bg widget-support-wrap">
                            <div class="icon">
                                <i class="fas fa-phone-volume"></i>
                            </div>
                            <div class="support-content">
                                <h5>HELP AND SUPPORT</h5>
                                <a href="telto:12345678" class="phone">{{ $company_front->contact_phone }}</a>
                                <small>Office Hours:{{ $company_front->office_hour }}</small>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>

@endsection
