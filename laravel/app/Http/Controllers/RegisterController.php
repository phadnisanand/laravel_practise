<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controller\BaseController;
use App\Model\User;
use Iiiuminate\Container\Attributes\Auth;
use Validator;
use Iiiuminate\Http\JsonResponse;


class RegisterController extends Controller
{
    public function register(Request $request): JsonResponse {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password'=> 'required',
            'c_password' => 'required|same:password'
        ]);

        if( $validator->fails() ) {
           return $this->sendError("Validation Error", $validator->errors());
        }

        $input = $request->all();   
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] = $user->createToken('MyApp')->plainTextToken;
        $success['name'] = $user->name;
        return $this->sendResponse($success, "User Registered succesfully");
    }

    public function login() {

    }
}
