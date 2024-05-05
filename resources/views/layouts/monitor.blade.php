<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title') | {{ config('app.name', 'My App') }}</title>
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
</head>
<body>
    <div class="main-container">
        @yield('content')
        @stack('scripts')
    </div>
</body>
<footer>
    <div>
        <p>Copyright &copy; 2020 Cekdos</p>
    </div>
</footer>
</html>
