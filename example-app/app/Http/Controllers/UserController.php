<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

class UserController extends Controller
{
    
    public function index() {
        die('index');
    }

    public function show($id) {
        echo 'user id ' . $id; echo '<br />';
         die('show');
    }
}
