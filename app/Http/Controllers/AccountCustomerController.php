<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class AccountCustomerController extends Controller
{
    public function index(){
        $customers = Customer::all();
        return view("admin.accountCustomer",["customers"=> $customers]);
    }
    public function create(){
        return view("admin.customer_create");
    }
    public function store(Request $request){
        $request->validate([
            'firstname' => 'required',
            'middlename' => 'required',
            'lastname' => 'required',
            'email' => 'required|email|unique:customer,email',
            'phone' => 'required',
            'address' => 'required',
            'password' => 'required',
        ]);
    
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagePath = $image->store('public/Storage');
            $imagePath = str_replace('public/', '', $imagePath);
        } else {
            $imagePath = null;
        }
    
        Customer::create([
            'firstname' => $request->firstname,
            'middlename' => $request->middlename,
            'lastname' => $request->lastname,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'img' => $imagePath,
            'password' => Hash::make($request->password), 
        ]);
    
        return redirect()->route('admin.account_customer');
    }
    public function edit($id){
        $customer = Customer::find($id);
        return view('admin.customer_update',['customer'=> $customer]);
    }
    public function update(Request $request, $id)
    {
        // Validate the request data
        $request->validate([
            'firstname' => 'required',
            'middlename' => 'required',
            'lastname' => 'required',
            'email' => 'required|email|unique:customer,email,' . $id,
            'phone' => 'required',
            'address' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Add image validation
        ]);

        // Find the customer by ID
        $customer = Customer::find($id);

        // Check if the customer exists
        if (!$customer) {
            return redirect()->route('admin.account_customer')->with('error', 'Customer not found');
        }

        // Update customer data
        $customer->firstname = $request->firstname;
        $customer->middlename = $request->middlename;
        $customer->lastname = $request->lastname;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->address = $request->address;

        // Update the image if a new one is provided
        if ($request->hasFile('image')) {
            // Delete the existing image if it exists
            if ($customer->img) {
                Storage::delete('public/' . $customer->img);
            }

            // Store the new image
            $image = $request->file('image');
            $imagePath = $image->store('public/Storage');
            $imagePath = str_replace('public/', '', $imagePath);

            $customer->img = $imagePath;
        }

        // Save the changes
        $customer->save();

        return redirect()->route('admin.account_customer')->with('success', 'Customer updated successfully');
    }
    public function destroy($id)
    {

        $customer = Customer::find($id);

        if (!$customer) {
            return redirect()->route('admin.account_customer')->with('error', 'Customer not found');
        }
        if ($customer->img) {
            Storage::delete('public/' . $customer->img);
        }

        $customer->delete();

        return redirect()->route('admin.account_customer')->with('success', 'Customer deleted successfully');
    }
}
