<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function loginForm()
    {
        return view('auth.login');
    }

    public function loginPost(Request $request)
    {
        if (auth()->guard('mahasiswa')->attempt(['email' => $request->email, 'password' => $request->password])) {
            # code...
            $request->validate([
                'email' => 'required',
                'password' => 'required'
            ]);
            $nim = Mahasiswa::where('email', '=', $request->email)->first()->nim;
            return redirect('mahasiswa/' . $nim);
        } elseif (auth()->guard('admin')->attempt(['email' => $request->email, 'password' => $request->password])) {
            return 'One Of Admins';
        } else {
            return 'Invalid Credential';
        }
    }
    public function logout()
    {
        //delete login session current user
        Auth::logout();
        return redirect()->route('login');
    }
}
