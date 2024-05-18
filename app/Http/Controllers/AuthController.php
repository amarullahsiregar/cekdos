<?php

namespace App\Http\Controllers;

use App\Models\Admin;
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
        // Validate the request data
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        // Attempt to authenticate the admin
        if (auth()->guard('admin')->attempt($request->only('email', 'password'))) {
            return redirect()->route('admin.dashboard', auth()->guard('admin')->user()->email);
        }

        // Attempt to authenticate the mahasiswa
        if (auth()->guard('mahasiswa')->attempt($request->only('email', 'password'))) {
            $mahasiswa = Mahasiswa::whereEmail($request->email)->firstOrFail();
            return redirect()->route('mahasiswa.dashboard', $mahasiswa->nim);
        }

        // If authentication fails, redirect back to the login page
        return redirect()->route('login')->withErrors(['email' => 'Invalid credentials.']);
    }

    // public function loginPost(Request $request)
    // {
    //     if (auth()->guard('admin')->attempt(['email' => $request->email, 'password' => $request->password])) {
    //         Auth::check();
    //         $admin = Admin::whereEmail($request->email)->first();
    //         // dump($admin->email);
    //         return redirect()->route('admin.dashboard', $admin->email);
    //     } elseif (auth()->guard('mahasiswa')->attempt(['email' => $request->email, 'password' => $request->password])) {
    //         // Validate the request data
    //         $request->validate([
    //             'email' => 'required',
    //             'password' => 'required'
    //         ]);

    //         // Retrieve the NIM from the Mahasiswa model
    //         $mahasiswa = Mahasiswa::whereEmail($request->email)->first();
    //         if (!$mahasiswa) {
    //             // Handle the case where the mahasiswa is not found
    //             abort(404, 'Mahasiswa not found');
    //         }

    //         // Redirect to the mahasiswa dashboard
    //         return redirect()->route('mahasiswa.dashboard', $mahasiswa->nim);
    //     } else {
    //         return 'Invalid Credential';
    //         sleep(2);
    //         return redirect()->route('login');
    //     }
    // }
    public function logout()
    {
        //delete login session current user
        Auth::logout();
        return redirect()->route('login');
    }
}
