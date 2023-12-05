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
            <div class="section">
                <div class="col span_2">
                    <h3 class="text-center">Add New Account Customer</h3>
                    <form action="{{route('account_customer.store')}}" method="POST" enctype="multipart/form-data" onsubmit="return validateForm()">
                        @csrf
                        <div class="col mb-3">
                            <label class="form-label" for="firstname">FirstName:</label>
                            <input type="text" name="firstname" placeholder="FirstName" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="middlename">MiddleName:</label>
                            <input type="text" name="middlename" placeholder="MiddleName" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="lastname">LastName:</label>
                            <input type="text" name="lastname" placeholder="LastName" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="email">Email:</label>
                            <input type="email" name="email" placeholder="Email" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="phone">Phone:</label>
                            <input type="text" name="phone" placeholder="Phone" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="address">Address:</label>
                            <input type="text" name="address" placeholder="Address" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="image">Image:</label>
                            <input type="file" name="image" class="form-control">
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="password">Password:</label>
                            <input type="password" name="password" placeholder="Password" class="form-control" required>
                        </div>
                        <div class="col mb-3">
                            <label class="form-label" for="password_confirm">Password Confirm:</label>
                            <input type="password" name="password_confirm" placeholder="Password Confirm" class="form-control" required>
                        </div>
                        <div class="col mb-3 text-center">
                            <button type="submit" class="btn btn-primary">Add Account</button><br>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-6">
                    <img class="footer__img" width="100px" src="{{asset('/Image/logo.png')}}">
                    <h1 class="footer__title">Nahinn<span class="footer__light">.com</span></h1>
                </div>
            </div>
        </div>
    </footer>
</body>


</html>