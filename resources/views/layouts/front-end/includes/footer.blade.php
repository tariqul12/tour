<footer id="colophon" class="site-footer footer-primary">
    <div class="top-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <aside class="widget widget_text">
                        <h3 class="widget-title">
                            About Travel
                        </h3>
                        <div class="textwidget widget-text">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec
                            ullamcorper mattis, pulvinar dapibus leo.
                        </div>

                    </aside>
                </div>
                <div class="col-lg-3 col-md-6">
                    <aside class="widget widget_text">
                        <h3 class="widget-title">CONTACT INFORMATION</h3>
                        <div class="textwidget widget-text">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fas fa-phone-alt"></i>
                                        {{ $company_front->contact_phone }}
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fas fa-envelope"></i>
                                        {{ $company_front->contact_email }}
                                    </a>
                                </li>
                                <li>
                                    <i class="fas fa-map-marker-alt"></i>
                                    {{ $company_front->company_address }}
                                </li>
                            </ul>
                        </div>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6">
                    <aside class="widget widget_recent_post">
                        <h3 class="widget-title">Latest Package</h3>
                        <ul>
                            @foreach ($footer_package as $package)
                                <li>
                                    <h5>
                                        <a href="{{ route('packageOrder', $package->id) }}">{{ $package->title }}</a>
                                    </h5>
                                    <div class="entry-meta">
                                        <span class="post-on">
                                            <a href="{{ route('packageOrder', $package->id) }}">
                                                <i class="fas fa-shopping-cart"></i>
                                                {{ $package->single_price }}
                                            </a>
                                        </span>

                                    </div>
                                </li>
                            @endforeach

                        </ul>
                    </aside>
                </div>
                <div class="col-lg-3 col-md-6">
                    <aside class="widget widget_newslatter">
                        <h3 class="widget-title">SUBSCRIBE US</h3>
                        <div class="widget-text">

                        </div>
                        <form class="newslatter-form">
                            <input type="email" name="s" placeholder="Your Email..">
                            <input type="submit" name="s" value="SUBSCRIBE NOW">
                        </form>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <div class="buttom-footer">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5">
                    <div class="footer-menu">
                        <ul>
                            <li>
                                <a href="#">Privacy Policy</a>
                            </li>
                            <li>
                                <a href="#">Term & Condition</a>
                            </li>
                            <li>
                                <a href="#">FAQ</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="footer-logo">
                        <a href="#"><img height="100" width="100" src="{{ asset($company_front->logo_png) }}"
                                alt=""></a>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="copy-right text-right">Copyright © 2024 <a target="_blank" href="bsdbd.com">BSDBD</a>.
                        All rights reserveds</div>
                </div>
            </div>
        </div>
    </div>
</footer>
