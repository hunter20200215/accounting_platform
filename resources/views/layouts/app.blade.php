<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Bookkeeper') }}</title>

    <!-- Scripts -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <script src="{{ asset('js/app.js') }}" ></script>
    <script src="{{ asset('js/admin.js') }}" defer></script>
    <script src="{{ asset('js/select2.js') }}" defer></script>
    <script src="https://cdn.tiny.cloud/1/ivj8o5ht1v5laqfzfhe2p8gh4gnountg5jjoriow59hcfioi/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <!-- Styles -->
    <link href="{{ asset('css/admin.css') }}" rel="stylesheet">
    <link href="{{ asset('css/select2.css') }}" rel="stylesheet">
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
            <a id="mobile_icon" class="mobile-view">
                <i class="fas fa-bars"></i>
            </a>
            <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent" style="font-size:16px;color:black;">
                <ul class="navbar-nav mr-auto">
                    @auth
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.home') }}">{{ __('Dashboard') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.clients') }}"><i class='fas fa-users' style='font-size:18px'></i> {{ __(' Clients') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.opportunities') }}"><i class='fas fa-atom' style='font-size:18px'></i> {{ __(' Opportunities') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.marketing') }}"><i class='fas fa-bullhorn' style='font-size:18px'></i> {{ __(' Marketing') }}</a>
                        </li>
                    @endauth
                </ul>
                
                <ul class="navbar-nav ml-auto mr-0">
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
                            <a class="nav-link dropdown-toggle"  href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class='fas fa-calculator mr-2' style='font-size:18px'></i>Settings
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="{{ route('admin.users')}}">Users</a>
                                <a class="dropdown-item" href="{{ route('admin.category') }}">Categories</a>
                                <a class="dropdown-item" href="{{ route('admin.highlights') }}">Highlights</a>
                                <a class="dropdown-item" href="{{ route('admin.carriers.index') }}">Carriers</a>
                                <a class="dropdown-item" href="{{ route('admin.permissions') }}">Permissions</a>
                                <a class="dropdown-item"  id="backup">Backup</a>
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
            <div class="mobile-view-none" id="mobile_menu_container">
                <ul class="mr-auto">
                    @auth
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.home') }}">{{ __('Dashboard') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.clients') }}"><i class='fas fa-users' style='font-size:18px'></i> {{ __(' Clients') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.opportunities') }}"><i class='fas fa-atom' style='font-size:18px'></i> {{ __(' Opportunities') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.marketing') }}"><i class='fas fa-bullhorn' style='font-size:18px'></i> {{ __(' Marketing') }}</a>
                        </li>
                    @endauth
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="/register">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @endguest
                </ul>
                <ul class="ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle"  href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class='fas fa-calculator mr-2' style='font-size:18px'></i>Settings
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="{{ route('admin.users')}}">Users</a>
                            <a class="dropdown-item" href="{{ route('admin.category') }}">Categories</a>
                            <a class="dropdown-item" href="{{ route('admin.highlights') }}">Highlights</a>
                            <a class="dropdown-item" href="{{ route('admin.permissions') }}">Permissions</a>
                            <a class="dropdown-item" id="backup">Backup</a>
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
