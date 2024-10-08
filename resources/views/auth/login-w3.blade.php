@extends('layouts.app')
@section('title','Login')
@section('adds')
    <link id="pagestyle" href="../assets/css/main.css" rel="stylesheet" />
@endsection
@section('content')
    <div class="main-container">
        <form method="POST" action="/login">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
              </div>

              <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <button type="submit">Login</button>
                <label>
                  <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
              </div>

              <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
              </div>
        </form>
    </div>
@endsection
