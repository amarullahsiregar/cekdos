@extends('layouts.monitor') <!-- Menggunakan Layout bernama "app.blade.php" pada direktori /views/layouts/ -->

@section('title', 'List Dosens')
@section('refresh-time')
<meta http-equiv="refresh" content="{{ (count($dosens)*3)+5 }}">    {{-- Melakukan Auto Refresh sebanyak jumlah dosen --}}
@endsection

@section('content')
<div class="main-container">
    <div class="slider">
        @foreach ($dosens as $dosen)
            @switch($dosen->status_kehadiran)
                @case('Hadir')
                    <div class="hadir border">
                    @break
                @case('Tidak Hadir')
                    <div class="absen border">
                    @break
                @case('Mengajar')
                    <div class="mengajar border">
                    @break
                @default

            @endswitch
                        <div class="text-center">
                            <div >
                                <h1 class="nama_dosen text-center">
                                    {{ $dosen->nama }}
                                </h1>
                                <div class="status-kehadiran text-center">
                                    <h2>Sedang {{ $dosen->status_kehadiran }}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
        @endforeach
    </div>
</div>
@endsection
@push('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script>
    $(document).ready(function(){

        $('.slider').slick({
            slidesToShow: 2,
            slidesToScroll: 2,
            infinite: false,    //true untuk slide berulang ke awal
            autoplay: true,
            autoplaySpeed: 6000,
            dots: true,
            arrows: true,
        });

    });
    </script>
@endpush
