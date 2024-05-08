<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MahasiswaController extends Controller
{
    public function detail($nim)
    {
        $detmhs = Mahasiswa::where('nim', '=', $nim)->first();
        $statusdosen1 = Dosen::where('email', '=', $detmhs->dosbing1)->first();
        $statusdosen2 = Dosen::where('email', '=', $detmhs->dosbing2)->first();
        return view('mahasiswa.detail', ['details' => $detmhs, 'statusdosen1' => $statusdosen1, 'statusdosen2' => $statusdosen2]);
    }
}
