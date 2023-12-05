<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    function index(){
        $orders = DB::table('order')
            ->join('customer', 'customer.customer_id', '=', 'order.customer_id')
            ->select('order.*', 'customer.*')
            ->get();

        return view('admin.order', ['orders' => $orders]);                     
    }

    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'user_id' => 'required',
            'total_amount' => 'required|numeric',
            'description' => 'required|string',
        ]);

        $order = new Order();
        $order->user_id = $request->user_id;
        $order->total_amount = $request->total_amount;
        $order->description = $request->description;
        $order->save();

        return redirect()->route('admin.order')->with('success', 'Order added successfully');
    }
    public function edit($id)
    {
        $order = Order::find($id);
        $categories = Category::all();

        return view('admin.order_update', compact('order', 'categories'));
    }
    public function update(Request $request, $id)
    {
        $total_order = $request->total_order;
        $total_order = intval(str_replace([',', 'đ'], '', $total_order))/100;

        $request->validate([
            'total_order' => 'required',
            'status' => 'required',
            'description' => 'required',
        ]);

        // Tìm đơn hàng cần cập nhật
        $order = Order::find($id);
        // Kiểm tra xem đơn hàng có tồn tại không
        if (!$order) {
            return redirect()->back()->with('error', 'Không tìm thấy đơn hàng');
        }

        // Khai báo biến để lưu trữ status và description
        $status = '';
        $description = '';

        if ($request->status == 'successful') {
            $status = "Giao dịch thành công";
        } elseif ($request->status == "pending") {
            $status = "Đang chờ thanh toán";
        }

        if ($request->description == "cash") {
            $description = "Thanh toán bằng tiền mặt";
        } elseif ($request->description == "vnpay") {
            $description = "Thanh toán bằng VNpay";
        }

        if ($request->status == "successful" && $request->description == "cash") {
            $this->CalculateQuantity($id);
        }

        // Cập nhật thông tin đơn hàng
        $order->order_total = $total_order;
        $order->status = $status;
        $order->description = $description;

        // Lưu thay đổi vào cơ sở dữ liệu
        $order->save();

        // Chuyển hướng về trang trước với thông báo thành công
        return redirect()->route('admin.order')->with('success', 'Order updated successfully');
    }

    public function destroy($id)
    {
        // Xóa danh mục dựa trên ID
        Order::destroy($id);

        // Chuyển hướng sau khi xóa thành công
        return redirect()->route('admin.order')->with('success', 'Order deleted successfully');
    }
    public function viewOrderDetail($order_id){
        $orderDetails = DB::table('order_detail as od')
                     ->select('od.*', 'p.product_name', 'pd.URL as image')
                     ->join('product as p', 'p.product_id', '=', 'od.product_id')
                     ->join('product_data as pd', 'pd.product_id', '=', 'p.product_id')
                     ->where('od.order_id', '=', $order_id)
                     ->get();
        return view('admin.orderDetail', ['orderDetails'=> $orderDetails]);
    }
    public function CalculateQuantity($order_id){
        $orderDetails = DB::table('order_detail')
            ->where('order_id', $order_id)
            ->where('row_delete', '=', '0')
            ->get();
        foreach ($orderDetails as $orderDetail) {
            $product_id = $orderDetail->product_id;
            $quantity = $orderDetail->quantity;
        
            DB::table('product')
                ->where('product_id', $product_id)
                ->decrement('quantity', $quantity);
        }
        
        DB::table('order_detail')
            ->where('order_id', $order_id)
            ->update(['row_delete' => '1']);
    }
}
