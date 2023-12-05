<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('Image/logo.png')}}" />
    <link rel="stylesheet" href="{{ asset('CSS/order.css') }}">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <header class="header">
        <div class="container header__container">
            <div class="header__logo">
                <img class="header__img" src="{{asset('Image/logo.png')}}">
                <h1 class="header__title">Nahinn<span class="header__light">.com</span></h1>
            </div>
            <div class="header__menu">
                <nav id="navbar" class="header__nav collapse">
                    <ul class="header__elenco">
                        <li class="header__el"><a href="{{route('homepage')}}" class="header__link">Home</a></li>
                        <li class="header__el header__el--category">
                            <a href="#" class="header__link" id="category-link">Category</a>
                            <ul class="category-list" id="category-list">
                                @foreach ($categories as $category)
                                <li class="header__el">
                                    <a href="#" class="header__link">{{ $category->category_name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="header__el"><a href="{{route('customer.cart')}}" class="header__link">Cart</a></li>
                        <li class="header__el"><a href="{{route('contact')}}" class="header__link">Contact us</a></li>
                        @if(auth()->check())
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <button type="submit" class="btn btn--white">Logout →</button>
                        </form>
                        @else
                        <li class="header__el header__el--blue"><a href="{{ route('login') }}" class="btn btn--white">Sign In →</a></li>
                        @endif
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <div id="invoiceholder">

        <div id="headerimage"></div>
        <div id="invoice" class="effect2">
            <div id="invoice-top">
                <div class="logo"></div>
                <div class="clientlogo"></div>
                <div class="info">
                    <div class="avatar">
                        <img src="{{ asset('storage/' . $customer->img) }}">
                    </div>
                    <div class="data_info">
                        <h2>{{ $customer->first_name}} {{ $customer->middle_name }} {{ $customer->last_name }}</h2>
                        <p>{{ $customer->email }}</p>
                        <p>{{ $customer->phone }}</p>
                        <p>{{ $customer->address }}</p>
                    </div>
                </div>
            </div><!--End InvoiceTop-->

            <div id="invoice-bot">
                <div id="table">
                    <table>
                        <tr class="tabletitle">
                            <td class="item">
                                <h2>OrderID</h2>
                            </td>
                            <td class="Hours">
                                <h2>Product Name</h2>
                            </td>
                            <td class="Hours">
                                <h2>Image</h2>
                            </td>
                            </td>
                            <td class="Hours">
                                <h2>Quantity</h2>
                            </td>
                            <td class="Hours">
                                <h2>Price</h2>
                            </td>
                            <td class="Hours">
                                <h2>Description</h2>
                            </td>
                        </tr>
                        @if (isset($orderDetails))
                            @foreach($orderDetails as $product)
                                <tr class="service">    
                                    <td class="tableitem">
                                        <p class="itemtext">{{ $product->order_id }}</p>
                                    </td>
                                    <td class="tableitem">
                                        <p class="itemtext">{{ $product->product_name }}</p>
                                    </td>
                                    <td class="tableitem">
                                        <p class="itemtext"><img src="{{ asset('storage/' . $product->image) }}" alt="Product Image" /></p>
                                    </td>
                                    <td class="tableitem">
                                        <p class="itemtext">{{ $product->quantity }}</p>
                                    </td>
                                    <td class="tableitem">
                                        <p class="itemtext">{{ number_format($product->unit_price, 0, ',', ',') . ',000đ' }}</p>
                                    </td>
                                    </td>
                                    <td class="tableitem">
                                        <p class="itemtext">{{ $product->description }}</p>
                                    </td>
                                </tr>
                            @endforeach
                        @endif
                    </table>
                    <a href="{{route('customer.vieworder')}}" class="btn btn-success">Back</a>
                </div>
                <div id="legalcopy">
                    <p class="legal"><strong>Thank you for your business!</strong>
                    </p>
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