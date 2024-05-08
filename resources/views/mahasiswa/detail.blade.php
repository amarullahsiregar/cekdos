<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div class="container-fluid py-4">
        <div style="background-color: aliceblue; width: 68px; padding: 10px; border-radius: 6px; margin-bottom: 10px; margin-left: calc(100vw - 90px) !important">
            <button type="button">
                <a href="{{ url('/logout') }}">Logout</a>
            </button>
        </div>
        <div class="card">
            <div class="card-header pb-0 px-3">
                <h1>Profil Mahasiswa</h1>
            </div>
            <div class="card-body pt-4 p-3">
                @if($details==null)
                Maaf user tidak ditemukan!
                @else
                <form action="/mahasiswa-put/{{ $details->nim }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <label for="nim">NIM : </label>
                        <div>
                            <input type="number" class="form-control" value="{{ $details->nim }}" placeholder="NIM" name="nim" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <label for="nama">Nama : </label>
                        <div>
                            <input type="text" class="form-control" value="{{ $details->nama }}" placeholder="Nama Mahasiswa" name="nama">
                        </div>
                    </div>
                    <div class="row">
                        <label for="nama">Email : </label>
                        <div>
                            <input type="email" class="form-control" value="{{ $details->email }}" placeholder="Email Mahasiswa" name="email" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <label for="topik">Topik TA : </label>
                        <div>
                            <input type="text" class="form-control" value="{{ $details->topik_ta }}" placeholder="Topik TA" name="topik" >
                        </div>
                    </div>
                    <div class="row">
                        <label for="dosbing1">Dosen Pembimbing 1 : {{ $statusdosen1->status_kehadiran }}</label>
                        <div>
                            <input type="email" class="form-control" value="{{ $details->dosbing1 }}" name="dosbing1" readonly>
                        </div>
                    </div><div class="row">
                        <label for="dosbing2">Dosen Pembimbing 2 : {{ $statusdosen2->status_kehadiran }}</label>
                        <div>
                            <input type="email" class="form-control" value="{{ $details->dosbing2 }}" name="dosbing2"  readonly>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end" style="font-weight: bold ">
                        <button class="btn bg-gradient-dark btn-md mt-4 mb-4" style=" border: 2px solid black">
                            <a style="text-decoration: none; color :black;" href="{{ url('ambil-antrian').'/' }}{{ $details->nim }}">
                                Antri Bimbingan
                            </a>
                        </button>

                        <button class="btn btn-md mt-4 mb-4"  style=" border: 2px solid grey; background-color: #33B2CC" type="submit">Simpan Data</button>
                    </div>
                </form>
                @endif
            </div>
        </div>
    </div>
</body>
</html>
