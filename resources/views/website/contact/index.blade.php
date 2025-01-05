@extends('layouts.front-end.master')
@section('title', 'Contact Us')

@section('content')


    <!-- Inner Banner html start-->
    <section class="inner-banner-wrap">
        <div class="inner-baner-container" style="background-image: url({{ asset($contact_banner->image) }});">
            <div class="container">
                <div class="inner-banner-content">
                    <h1 class="inner-title">Contact us</h1>
                </div>
            </div>
        </div>
        <div class="inner-shape"></div>
    </section>
    <!-- Inner Banner html end-->
    <!-- contact form html start -->
    <div class="contact-page-section">
        <div class="contact-form-inner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="contact-from-wrap">
                            <div class="section-heading">
                                <h5 class="dash-style">GET IN TOUCH</h5>
                                <h2>CONTACT US TO GET MORE INFO</h2>
                                <p>Contact us for any queries or a custom tour package.</p>
                            </div>
                            <form class="contact-from" action="{{ route('contact.store') }}" method="POST">
                                @csrf
                                <p>
                                    <input type="text" name="name" placeholder="Your Name*">
                                </p>
                                <p>
                                    <input type="email" name="email" placeholder="Your Email*">
                                </p>
                                <p>
                                    <input type="number" name="phone" placeholder="Your Phone*">
                                </p>
                                <p>
                                    <textarea rows="8" name="message" placeholder="Your Message*"></textarea>
                                </p>
                                <p>
                                    <input type="submit" name="submit" value="SUBMIT MESSAGE">
                                </p>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="contact-detail-wrap">
                            <h3>Need help ?? Feel free to contact us !</h3>
                            <p>Please contact us in case of any questions. We’re happy to answer them and ready to help you
                                tailor any kind of travel and process all kinds of demands from private individual trips to
                                group travels, cargo handling, helicopter and boat rental to private charter in all of
                                Bangladesh</p>
                            <div class="details-list">
                                <ul>
                                    <li>
                                        <span class="icon">
                                            <i class="fas fa-map-signs"></i>
                                        </span>
                                        <div class="details-content">
                                            <h4>Location Address</h4>
                                            <span>{{ $company_front->company_address }}</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span class="icon">
                                            <i class="fas fa-envelope-open-text"></i>
                                        </span>
                                        <div class="details-content">
                                            <h4>Email Address</h4>
                                            <span>{{ $company_front->contact_email }}</span>
                                        </div>
                                    </li>
                                    <li>
                                        <span class="icon">
                                            <i class="fas fa-phone-volume"></i>
                                        </span>
                                        <div class="details-content">
                                            <h4>Phone Number</h4>
                                            <span>Telephone: {{ $company_front->contact_phone }} / Mobile:
                                                {{ $company_front->support_phone }}</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="contct-social social-links">
                                <h3>Follow us on social media..</h3>
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="map-section">
            <iframe src="{{ $company_front->google_map_api_link }}" height="400" allowfullscreen=""
                loading="lazy"></iframe>
        </div>
    </div>
    <!-- contact form html end -->

@endsection
