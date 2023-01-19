<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login(Request $request){
        $this->validateData($request);
        if(Auth::attempt($request->only('email','password'))){
            return response()->json([
                'token' => $request->user()->createToken($request->name)->plainTextToken,
                'message' => 'Succes'
            ]);
        }
        return response()->json([
            'message' => 'Unauthenticated'
        ], 401);
    }
    public function register(Request $request){
        $this->validateData($request);
        $user = User::create([
            'email' => $request['email'],
            'password' =>Hash::make($request['password']),
            'name' => $request['name']
        ]);

        if($user){
            return response()->json([
                'message' => 'Succes'
            ]);
        }
        return response()->json([
            'message' => 'Unauthenticated'
        ], 401);
        // // $token = $user->createToken('auth_token')->plainTextToken;
        // return response()->json([
        //     // 'access_token' => $token,
        //     'token_type' => 'Success'
        // ]);
    }

    public function validateData(Request $request){
        return $request->validate([
            'email' => 'required|email',
            'password' => 'required',
            'name' => 'required'
        ]);
    }
}
