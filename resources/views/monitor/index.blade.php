@extends('layouts.monitor') <!-- Menggunakan Layout bernama "app.blade.php" pada direktori /views/layouts/ -->

@section('title', 'List Dosens')

@section('content')

@foreach ($dosens as $dosen)
    <div><h1>{{ $dosen->nama }}</h1></div>
@endforeach

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
            autoplay: false,
            autoplaySpeed: 6000,
            dots: true,
            arrows: true,
        });

    });
    </script>
@endpush
