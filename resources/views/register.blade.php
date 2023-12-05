<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="{{ asset('CSS/register.css') }}">
    <link rel="stylesheet" href="{{asset('CSS/homepage.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<header class="header">
        <div class="container header__container">
            <div class="header__logo">
                <img class="header__img" src="{{asset('Image/logo.png')}}">
                <h1 class="header__title">Nahinn<span class="header__light">.com</span></h1>
            </div>
            <div class="header__menu">
                <nav id="navbar" class="header__nav">
                    <ul class="header__elenco">
                        <li class="header__el"><a href="{{route('root')}}" class="header__link">Home</a></li>
                        <li class="header__el header__el--category">
                            <a href="#" class="header__link" id="category-link">Category</a>
                            <ul class="category-list" id="category-list">
                                @foreach ($categories as $category)
                                <li class="header__el">
                                    <a href="{{ route('searchByCategory', ['id' => $category->category_id]) }}" class="header__link">{{ $category->category_name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="header__el"><a href="{{route('customer.cart')}}" class="header__link">Cart</a></li>
                        <li class="header__el"><a href="{{route('contact')}}" class="header__link">Contact us</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="card">
            <div class="body">
                <div class="background_left">
                    <div class="img">
                        <img src="{{ asset('/Image/logo.png') }}" class="logo" alt="logo">
                    </div>
                </div>
                <div class="background_right">
                    <div class="header-right">
                        <img src="{{ asset('/Image/user.png') }}" class="logo_user" alt="logo user">
                        <p class="h4">REGISTER</p>
                    </div>
                    <form action="{{route('register')}}" method="POST" enctype="multipart/form-data" onsubmit="return validateForm()">
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
                            <button type="submit" class="btn btn-primary">Register</button><br>
                            <a href="{{route('login')}}">I have account</a>
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
<script>
    function validateForm() {
        var firstname = document.querySelector('input[name="firstname"]').value;
        var middlename = document.querySelector('input[name="middlename"]').value;
        var lastname = document.querySelector('input[name="lastname"]').value;
        var email = document.querySelector('input[name="email"]').value;
        var phone = document.querySelector('input[name="phone"]').value;
        var address = document.querySelector('input[name="address"]').value;
        var password = document.querySelector('input[name="password"]').value;
        var password_confirm = document.querySelector('input[name="password_confirm"]').value;

        if (firstname === "") {
            alert('Vui lòng nhập FirstName');
            return false;
        }
        if (middlename === "") {
            alert('Vui lòng nhập MiddleName');
            return false;
        }
        if (lastname === "") {
            alert('Vui lòng nhập LastName');
            return false;
        }
        if (email === "") {
            alert('Vui lòng nhập Email');
            return false;
        }
        if (!isValidEmail(email)) {
            alert('Email không hợp lệ');
            return false;
        }
        if (phone === "" || isNaN(phone) || phone.length !== 10) {
            alert('Số điện thoại không hợp lệ');
            return false;
        }
        if (address === "") {
            alert('Vui lòng nhập Address');
            return false;
        }
        if (password === "") {
            alert('Vui lòng nhập Password');
            return false;
        }
        if (password !== password_confirm) {
            alert('Password và Password Confirm không trùng khớp');
            return false;
        }

        return true;
    }

    function isValidEmail(email) {
        var emailPattern = /^\S+@\S+\.\S+$/;
        return emailPattern.test(email);
    }
</script>
</script>
</body>
</html>