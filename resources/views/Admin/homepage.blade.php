<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('Image/logo.png')}}" />
    <link rel="stylesheet" href="{{ asset('CSS/homepageadmin.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="{{asset('\images\favicon.ico')}}">

    <!-- Bootstrap select pluings -->
    <link href="{{asset('homepage\libs\bootstrap-select\bootstrap-select.min.css')}}" rel="stylesheet" type="text/css">

    <!-- c3 plugin css -->
    <link rel="stylesheet" type="text/css" href="{{asset('homepage\libs\c3\c3.min.css')}}">

    <!-- App css -->
    <link href="{{asset('homepage\css\bootstrap.min.css')}}" rel="stylesheet" type="text/css" id="bootstrap-stylesheet">
    <link href="{{asset('homepage\css\icons.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('homepage\css\app.min.css')}}" rel="stylesheet" type="text/css" id="app-stylesheet">
    <link href="{{asset('homepage\css\index.css')}}" rel="stylesheet">
</head>
<body>
    <div class="sidebar">
        <div class="user">
            <img src="{{asset('Image/logo.png')}}" alt="logo">
            <span class="username">NAHINN</span>
        </div>
        <nav role='navigation'>
            <ul>
                <li><a href="{{route('admin.homepage')}}">HOMEPAGE</a></li>
                <li><a href="{{route('admin.category')}}">CATEGORY</a></li>
                <li><a href="{{ route('admin.product') }}">PRODUCT</a></li>
                <li><a href="{{route('admin.order')}}">ORDER</a></li>
                <li><a href="{{route('admin.account_customer')}}">ACCOUNT CUSTOMER</a></li>
                <li><a href="#">REPORT</a></li>
                <li><a href="#">STATISTIC</a></li>
            </ul>
        </nav>
    </div>

    <!-- MAIN -->
    <div class="main">
        <header>
            <!-- HEADER BOTTOM -->
            <div class="bottom">
                <!-- identity -->
                <div class="identity">
                    <img src="{{asset('Image/logo.png')}}" alt="logo">
                    <span class="name">NAHINN</span> <br />
                </div>
                <!-- actions -->
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <button type="submit" class="btn btn-danger">Logout →</button>
                </form>
            </div>
        </header>

        <!-- PAGE -->
        <div class="page group">
        <div class="container-fluid">
                        
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item active">Dashboard</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="row">

                            <div class="col-xl-3 col-md-6">
                                <div class="card widget-box-two bg-purple">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body wigdet-two-content">
                                                <p class="m-0 text-uppercase text-white" title="Statistics">Statistics</p>
                                                <h2 class="text-white"><span data-plugin="counterup">65841</span> <i class="mdi mdi-arrow-up text-white font-22"></i></h2>
                                                <p class="text-white m-0"><b>10%</b> From previous period</p>
                                            </div>
                                            <div class="avatar-lg rounded-circle bg-soft-light ml-2 align-self-center">
                                                <i class="mdi mdi-chart-line font-22 avatar-title text-white"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
        
                            <div class="col-xl-3 col-md-6">
                                <div class="card widget-box-two bg-info">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body wigdet-two-content">
                                                <p class="m-0 text-white text-uppercase" title="User Today">User Today</p>
                                                <h2 class="text-white"><span data-plugin="counterup">52142</span> <i class="mdi mdi-arrow-up text-white font-22"></i></h2>
                                                <p class="text-white m-0"><b>5.6%</b> From previous period</p>
                                            </div>
                                            <div class="avatar-lg rounded-circle bg-soft-light ml-2 align-self-center">
                                                <i class="mdi mdi-access-point-network  font-22 avatar-title text-white"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
        
                            <div class="col-xl-3 col-md-6">
                                <div class="card widget-box-two bg-pink">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body wigdet-two-content">
                                                <p class="m-0 text-uppercase text-white" title="Request Per Minute">Request Per Minute</p>
                                                <h2 class="text-white"><span data-plugin="counterup">2365</span> <i class="mdi mdi-arrow-up text-white font-22"></i></h2>
                                                <p class="text-white m-0"><b>7.02%</b> From previous period</p>
                                            </div>
                                            <div class="avatar-lg rounded-circle bg-soft-light ml-2 align-self-center">
                                                <i class="mdi mdi-timetable font-22 avatar-title text-white"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
        
                            <div class="col-xl-3 col-md-6">
                                <div class="card widget-box-two bg-success">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body wigdet-two-content">
                                                <p class="m-0 text-white text-uppercase" title="New Downloads">New Downloads</p>
                                                <h2 class="text-white"><span data-plugin="counterup">854</span> <i class="mdi mdi-arrow-up text-white font-22"></i></h2>
                                                <p class="text-white m-0"><b>9.9%</b> From previous period</p>
                                            </div>
                                            <div class="avatar-lg rounded-circle bg-soft-light ml-2 align-self-center">
                                                <i class="mdi mdi-cloud-download font-22 avatar-title text-white"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
        
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Last 30 days statistics</h4>
    
                                        <div dir="ltr">
                                            <div id="donut-chart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Total Revenue share</h4>
                                        <div dir="ltr">
                                            <div id="combine-chart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Total Revenue share</h4>
                                        <div dir="ltr">
                                            <div id="roated-chart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div> 

                </div> <!-- end content -->
        </div>

    </div>

</body>
<script src="{{asset('homepage\js\vendor.min.js')}}"></script>

        <!-- Bootstrap select plugin -->
        <script src="{{asset('homepage\libs\bootstrap-select\bootstrap-select.min.js')}}"></script>

        <!-- plugins -->
        <script src="{{asset('homepage\libs\c3\c3.min.js')}}"></script>
        <script src="{{asset('homepage\libs\d3\d3.min.js')}}"></script>

        <!-- dashboard init -->
        <script src="{{asset('homepage\js\pages\dashboard.init.js')}}"></script>

        <!-- App js -->
        <script src="{{asset('homepage\js\app.min.js')}}"></script>

</html>