<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Bookkeeper') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/admin.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin.css') }}" rel="stylesheet">


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>
<body>
<div id="app" class="">
    <nav class="navbar navbar-expand-md navbar-light shadow-sm" style="background-color:#fff;">
        <div class="container">
            
            <a class="navbar-brand" href="{{ route('admin.home') }}" style="font-size: 1.5rem;letter-spacing: 2px;">
                <!-- <img class="logo-image" src="/img/logo.png" alt="logo_image"> -->
                <img class="logo-image" src='{{ URL::asset("/img/7.png") }}' alt="logo_image" style="width: 180px !important;height: 55px;">
                <!-- {{__('BookKeeper')}} -->
            </a>
            

            <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent" style="font-size:16px;color:black;">
                
                <ul class="navbar-nav mr-auto">
                    @auth
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.home') }}">{{ __('Home') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.clients') }}"><i class='fas fa-users' style='font-size:18px'></i> {{ __(' Clients') }}</a>
                        </li>
                    @endauth
                </ul>
                <ul class="navbar-nav ml-auto">
                    
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="/register">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        
                        

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Setting
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="{{ route('admin.users')}}">Users</a>
                                <a class="dropdown-item" href="{{ route('admin.category') }}">Categories</a>
                                <a class="dropdown-item" href="{{ route('admin.highlights') }}">Highlights</a>
                                <a class="dropdown-item" href="{{ route('admin.permissions') }}">Permissions</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <main class="py-4" style="min-height: 71vh;">
        @yield('content')
    </main>
    
</div>
</body>
</html>
