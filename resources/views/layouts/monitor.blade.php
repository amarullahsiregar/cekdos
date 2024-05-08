<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title') | {{ config('app.name', 'My App') }}</title>
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">

    <!-- My Css -->
    <link id="pagestyle" href="../assets/css/monitor.css" rel="stylesheet" />
    <link id="pagestyle" href="../assets/css/monitor-mobile.css" rel="stylesheet" />
    <!-- My Css -->

    <!-- Slick Carousel -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
    <!-- Slick Carousel -->

    {{-- <script src="https://kit.fontawesome.com/a031935a14.js" crossorigin="anonymous"></script> --}}
    @yield('refresh-time')
    @vite([])
</head>
<body>
    @yield('content')

    @stack('scripts')
</body>
<footer>
    <div>
        <p class="copyright" style="text-align: center">Copyright &copy; 2020 Cekdos</p>
    </div>
</footer>
</html>
