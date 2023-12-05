<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class MoneyPayController extends Controller
{
    public function createMoneyPay($order_id){
        // Tìm đơn hàng theo ID
        $order = Order::find($order_id);
    
        // Kiểm tra xem đơn hàng có tồn tại không
        if (!$order) {
            return response()->json(['message' => 'Không tìm thấy đơn hàng'], 404);
        }
    
        // Cập nhật trạng thái và mô tả của đơn hàng
        $order->update([
            'status' => 'Đang chờ thanh toán',
            'description' => 'Thanh toán bằng tiền mặt'
        ]);
    
        $customer = Auth::guard('customer')->user();
        $categories = DB::select('SELECT category.*
                                FROM category');
        $orders = DB::select('SELECT o.* 
                            FROM `order` as o
                            JOIN order_detail as od ON od.order_id = o.order_id');
        return view('customer.vieworder',['categories' => $categories, 'orders'=> $orders, 'customer'=> $customer]);
    }    
}
