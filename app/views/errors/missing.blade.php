@extends('_layout.default')
@section('header')
{{ link_to_route('dashboard', 'Your Profile'). " | " }}
@if(Auth::check())
{{ link_to_route('logout', 'Logout') }}
@else
{{ link_to_route('user.create', 'Register') }}
{{ link_to_route('login', 'Login') }}
@endif
@stop
@section('content')
<div class="bs-docs-section">
<h2>Page Not Found</h2>
<p>Something went wrong. </p>
</div>
@stop