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
                </form>>
            </div>
        </header>

        <!-- PAGE -->
        <div class="page group">
            <div class="section">
                <div class="col span_2">
                    <h1>Edit Order</h1>
                    <form method="POST" action="{{ route('order.update', ['id' => $order->order_id]) }}">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label class="form-label" for="total_order">Total Order:</label>
                            <input type="text" name="total_order" class="form-control" required value="<?php echo number_format($order->order_total/10, 0, '', ','); ?>,000đ">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Status:</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="status" value="pending" <?php echo ($order->status == 'Đang chờ thanh toán') ? 'checked' : ''; ?>>
                                <label class="form-check-label">Payment Pending</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="status" value="successful" <?php echo ($order->status == 'Giao dịch thành công') ? 'checked' : ''; ?>>
                                <label class="form-check-label">Payment Successful</label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Description:</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="description" value="cash" <?php echo ($order->description == 'Thanh toán bằng tiền mặt') ? 'checked' : ''; ?>>
                                <label class="form-check-label">Payment Pending - Cash</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="description" value="vnpay" <?php echo ($order->description == 'Thanh toán bằng VNpay') ? 'checked' : ''; ?>>
                                <label class="form-check-label">Payment Successful - VNPay</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Category</button>
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