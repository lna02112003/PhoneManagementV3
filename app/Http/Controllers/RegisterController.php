<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        $categories = DB::select('SELECT category.*
                                FROM category
                                WHERE row_delete = 0');
        return view("register",["categories"=>$categories]);
    }
    public function register(Request $request)
    {
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
    
        return redirect()->route('login');
    }    
}
