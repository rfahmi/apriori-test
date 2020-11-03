<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    public function login(Request $request){
        $login = $request->validate([
            'email' => 'required|email',
            'password' => 'required|string'
        ]);

        if(!Auth::attempt($login)){
            return response()->json([
                "success" => false,
                "message" => 'Invalid credentials',
            ], 200);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;

        return response()->json([
            "success" => true,
            "message" => 'Access Granted',
            "access_token" => $accessToken,
            "user" => Auth::user()
        ], 200);

    }
    public function register(Request $request){
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'password' => 'required|string'
        ]);
        try {
            \App\Models\User::create([
                "name" => $request->name,
                "email" => $request->email,
                "password" => Hash::make($request->password),
            ]);
            return response()->json([
                "success" => true,
                "message" => "Please check " . $request->email,
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                "success" => false,
                "message" => $e->message,
            ], 200);
        }

    }
}
