@extends('layouts.app')
@section('title','Login')
@section('adds')
<link id="pagestyle" href="../assets/css/main.css" rel="stylesheet" />

<link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<link id="pagestyle" href="../assets/css/glass.css" rel="stylesheet" />
@endsection
@section('content')
    <div class="main-container">
        <div class="background">
            <div class="shape"><img class="logo-if" src="../assets/img/favicon.png" alt="Teknik Informatika" ></div>
            <div class="shape"></div>
        </div>
        <form method="POST" action="/login-post">
            @csrf
                <h3>Login Here</h3>

                <label for="email">Email</label>
                <input type="text" placeholder="user@email.com" id="email"  name="email">

                <label for="password">Password</label>
                <input type="password" placeholder="Masukkan Password Anda" id="password"  name="password" >

                <button type="submit">Log In</button>

        </form>
    </div>
@endsection
