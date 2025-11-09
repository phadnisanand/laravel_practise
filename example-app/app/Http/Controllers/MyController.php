<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    //
    public function index() {
       /* $arr_view_data= array();
        $arr_view_data['id'] = 1;
        $arr_view_data['name'] = 'Anand';
        $arr_view_data['age'] = 35;*/
      // return view('profile', compact($arr_view_data));
        $data1 = 'Anand';
        $data2 = 'Phadns';
       return view('profile', compact('data1', 'data2'));
       
    }


    public function view_profile() {
         $products = [
            ['name' => 'Laptop', 'price' => 1200, 'quantity' => 5],
            ['name' => 'Mouse', 'price' => 25, 'quantity' => 20],
         ];
         return view('product', compact('products'));

    }
    
    public function home_data() {
      $names = ["Anand Phadnis", "Sudhir Phadnis", "Kavita Phadnis"];
      return view('nextprofile', compact('names'));
    }

    public function show() {
      $data1 = 'hello anand, how are you?';
      return view('profile', compact('data1'));
    }
}
