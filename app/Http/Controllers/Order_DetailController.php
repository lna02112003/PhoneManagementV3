<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Order_DetailController extends Controller
{
   public function index(){
    $categories = DB::select('SELECT category.*
                            FROM category');
    return view('customer.order',['categories' => $categories]);
   }
   public function viewOrder(){
      $customer = Auth::guard('customer')->user();
      $categories = DB::select('SELECT category.*
                            FROM category');
      $orders = DB::select('SELECT o.* 
                        FROM `order` as o');
      return view('customer.vieworder',['categories' => $categories, 'orders'=> $orders, 'customer'=> $customer]);
   }
   public function viewOrderDetail($order_id) {
      $customer = Auth::guard('customer')->user();
      $categories = DB::select('SELECT category.*
                            FROM category');
      $orderDetails = DB::table('order_detail as od')
                     ->select('od.*', 'p.product_name', 'pd.URL as image')
                     ->join('product as p', 'p.product_id', '=', 'od.product_id')
                     ->join('product_data as pd', 'pd.product_id', '=', 'p.product_id')
                     ->where('od.order_id', '=', $order_id)
                     ->get();
      return view('customer.viewOrderDetail', ['orderDetails'=> $orderDetails, 'customer'=> $customer, 'categories' => $categories]);
   }
  
}
