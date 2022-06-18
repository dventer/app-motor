<?php

namespace App\Http\Controllers\Admin\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('Admin.auth.login');
    }

    public function login(Request $request)
    {
        $auth = [
            'email' => $request->email,
            'password' => $request->password
        ];
        
        if (Auth::attempt($auth)) {
            return redirect()->route('index.dashboard');
        }

        return 'salah password';
    }
}
