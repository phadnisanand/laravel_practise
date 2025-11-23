<?php

namespace App\Http\Controllers;

use App\Jobs\SendEmail;
use App\Mail\EmailForQueuing;
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
      $staticPostData = [
            'title' => 'Streamlining Laravel: 10 Game-Changing Practices You Need to Know',
            'blog-link' => "https://dolphinwebsolution.com/blog/laravel-10-game-changing-practices/",
            'email' => "phadnisanandhyd@gmail.com",
            'author' => 'Bhadresh Kotadiya',
            'published_at' => 'May 15, 2024',
        ];
       $subject = "Your Blog Post is Live! Check it Out Now";
        $template = new EmailForQueuing($staticPostData, $subject);
        SendEmail::dispatch($staticPostData['email'], $template);


        dd("We have emailed subscribers about your new blog post!");

        $data1 = 'Anand';
        $data2 = 'Phadns';
       return view('profile', compact('data1', 'data2'));

    }


    public function view_profile() {
       die('hi');
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
