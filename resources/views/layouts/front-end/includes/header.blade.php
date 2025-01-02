<header id="masthead" class="site-header header-primary">
    <!-- header html start -->
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 d-none d-lg-block">
                    <div class="header-contact-info">
                        <ul>
                            <li>
                                <a href="#"><i class="fas fa-phone-alt"></i>{{ $company_front->contact_phone }}</a>
                            </li>
                            <li>
                                <a href="#"><i class="fas fa-envelope"></i> {{ $company_front->contact_email }}</a>
                            </li>
                            <li>
                                <i class="fas fa-map-marker-alt"></i> {{ $company_front->company_address }}
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 d-flex justify-content-lg-end justify-content-between">
                    <div class="header-social social-links">

                        <ul>
                            <li><a target="_blank" href="{{ $company_front->facebook_link }}"><i
                                        class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                            <li><a target="_blank" href="{{ $company_front->twitter_link }}"><i class="fab fa-twitter"
                                        aria-hidden="true"></i></a></li>
                            <li><a target="_blank" href="{{ $company_front->instagram_link }}"><i
                                        class="fab fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a target="_blank" href="{{ $company_front->linkedin_link }}"><i class="fab fa-linkedin"
                                        aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="header-search-icon">
                        <button class="search-icon">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-header">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="site-identity">
                <h1 class="site-title">
                    <a href="{{ route('home') }}">
                        <img class="white-logo" height="100" width="100"
                            src="{{ asset($company_front->logo_jpg) }}" alt="logo">
                        <img class="black-logo" height="100" width="100"
                            src="{{ asset($company_front->logo_jpg) }}" alt="logo">
                    </a>
                </h1>
            </div>
            <div class="main-navigation d-none d-lg-block">
                <nav id="navigation" class="navigation">
                    <ul>
                        <li class="menu-item-has-children">
                            <a href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="{{ route('about') }}">About</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="{{ route('packeages') }}">Package</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="{{ route('destination.view') }}">Destination</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="{{ route('gellary.view') }}">Gellary</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="{{ route('contact') }}">Contact</a>

                        </li>
                    </ul>
                </nav>
            </div>
            <div class="header-btn">
                <a href="{{ route('contact') }}" class="button-primary">MESSAGE</a>
            </div>
        </div>
    </div>
    <div class="mobile-menu-container"></div>
</header>
