<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\MonitorController;
use Illuminate\Support\Facades\Route;

Route::middleware('web')->group(function () {
    Route::get('/', [MonitorController::class, 'index'])->name('monitor');
    Route::get('/landing-mobile', [MonitorController::class, 'indexMobile'])->name('landing.mobile');
    Route::get('/login', [AuthController::class, 'loginForm'])->name('login');
    Route::post('/login-post', [AuthController::class, 'loginPost']);
    Route::get('/admin-dashboard' . '/' . '{username}', [AdminController::class, 'dashboard'])->name('admin.dashboard');
});

Route::get('/dosens',  [DosenController::class, 'index'])->name('dosen.lists');
Route::get('/mahasiswas', [MahasiswaController::class, 'index'])->name('mahasiswa');

Route::get('/mahasiswa/{key}', [MahasiswaController::class, 'edit']);

Route::get('/dosen-add', [DosenController::class, 'create']);
Route::get('/dosen-add/{key}', [AdminController::class, 'addDosen']);
Route::post('/dosen-add-post', [AdminController::class, 'storeDosen']);

Route::get('/mahasiswa-add', function () {
    return view('welcome');
})->name('add mahasiswa');
Route::get('/mahasiswa-add/{key}', [AdminController::class, 'addStudent']);
Route::post('/mahasiswa-add-post', [MahasiswaController::class, 'create']);

Route::group(['middleware' => ['auth:admin']], function () {
});

Route::group(['middleware' => ['auth:mahasiswa']], function () {
    Route::get('/mahasiswa-dashboard' . '/' . '{username}', [MahasiswaController::class, 'dashboard'])->name('mahasiswa.dashboard');
    Route::put('mahasiswa-put/{nim}', [MahasiswaController::class, 'store']);
    Route::get('/change-password/{username}', [MahasiswaController::class, 'gantiPassword']);
    Route::put('change-password-put/{nim}', [MahasiswaController::class, 'storeGantiPassword']);
    Route::get('/ambil-antrian' . '/{nim}', [MahasiswaController::class, 'ambilAntrian']);
    Route::post('/antrian-add-post', [MahasiswaController::class, 'createAntrian']);
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
});
