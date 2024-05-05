<?php

namespace App\Http\Controllers;

use App\Models\AntrianBimbingan;
use App\Models\Dosen;
use Illuminate\Http\Request;

class MonitorController extends Controller
{
    public function index()
    {
        $dosens = Dosen::all();
        // $statusdosens = StatusHadirDosen::all(); // Assuming 'Dosen' is your Model name
        $antrians = AntrianBimbingan::all();
        return view('monitor.index', compact('dosens', 'antrians'));
    }
}
