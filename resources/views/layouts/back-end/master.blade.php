
<!doctype html>
<html lang="en" dir="ltr">
<head>
@include('layouts.back-end.include.style')
</head>

<body class="ltr app sidebar-mini">
<!-- PAGE -->
<div class="page">
    <div class="page-main">
@include('layouts.back-end.include.header')

@include('layouts.back-end.include.sidebar')
        <!--app-content open-->
        <div class="app-content main-content mt-0">
            <div class="side-app">
                <!-- CONTAINER -->
                <div class="main-container container-fluid">
                    @yield('body')
                </div>
            </div>
        </div>
        <!-- CONTAINER CLOSED -->
    </div>
@include('layouts.back-end.include.footer')
</div>
<!-- page -->

<!-- BACK-TO-TOP -->
<a href="#top" id="back-to-top"><i class="fa fa-long-arrow-up"></i></a>

@include('layouts.back-end.include.script')
</body>
</html>
