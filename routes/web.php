<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\MonitorController;
use App\Models\Admin;
use Illuminate\Support\Facades\Route;
// Route::get('/', function () { return view('welcome'); })->name('home');

Route::middleware('web')->group(function () {
    Route::get('/', [MonitorController::class, 'index'])->name('home');
    Route::get('/login', [AuthController::class, 'loginForm'])->name('login');
    Route::post('/login-post', [AuthController::class, 'loginPost']);
});

Route::group(['middleware' => ['auth:mahasiswa']], function () {
    Route::get(
        '/mahasiswa/{nim}',
        [MahasiswaController::class, 'detail']
    );
    Route::get('/logout', [AuthController::class, 'logout']);
});
