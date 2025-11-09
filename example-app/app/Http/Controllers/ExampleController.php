<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ExampleController extends Controller
{
    public function index()
    {
       
        return view('homedata');
    }
    
    public function contact()
    {
        return view('contact');
    }
}
