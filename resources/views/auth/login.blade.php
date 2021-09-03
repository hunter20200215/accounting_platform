<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/auth.css">
<!--===============================================================================================-->
<script src="{{ asset('js/app.js') }}" defer></script>
<link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body style="background-color:#f0f0f0;">
<nav class="navbar navbar-expand-md navbar-light shadow-sm" style="background-color:#fff;">
        <div class="container">
            
            <a class="navbar-brand" href="{{ url('/') }}" style="font-size: 1.5rem;letter-spacing: 2px;">
                <!-- <img class="logo-image" src="/img/logo.png" alt="logo_image"> -->
                <img class="logo-image" src='{{ URL::asset("/img/7.png") }}' alt="logo_image" style="width: 180px !important;height: 55px;">
                <!-- {{__('BookKeeper')}} -->
            </a>
            

            <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent" style="font-size:16px;color:black;">
                
                <ul class="navbar-nav mr-auto">
                    @auth
                        <li class="nav-item">
                            <a class="nav-link" href="#">{{ __('Home') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.clients') }}">{{ __('Clients') }}</a>
                        </li>
                    @endauth
                </ul>
                <ul class="navbar-nav ml-auto">
                    
                    @guest
                        
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
                                <a class="dropdown-item" href="#">Users</a>
                                <a class="dropdown-item" href="#">Categories</a>
                                <a class="dropdown-item" href="#">Highlights</a>
                                <a class="dropdown-item" href="#">Permissions</a>
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

	<div class="limiter">
		<div class="container-login100 my-5" style="">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
				
					
				<form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
					@csrf
					<span class="login100-form-title p-b-49">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Username</span>
						<input id="email" type="email" class="input100 @error('email') is-invalid @enderror" name="email" required placeholder="Type your email">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
						@error('email')
							<span class="invalid-feedback" role="alert">
								<strong>{{ $message }}</strong>
							</span>
						@enderror
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input id="password" type="password" class="input100 @error('password') is-invalid @enderror" name="password" required placeholder="Type your password">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
                        
						@error('password')
							<span class="invalid-feedback" role="alert">
								<strong>{{ $message }}</strong>
							</span>
						@enderror
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="submit">
								Login
							</button>
						</div>
					</div>

					

					
				</form>
			</div>
		</div>
	</div>
	<footer class="bg-dark text-light text-center text-md-left">
		<div class="container">
			<div class="row pt-4">
				<div class="col-md-12 text-center pb-4">
					
					<ul class="list-unstyled">
						<li>
							<a href="#" class="text-light">Copyright © 2021 2705151 Ontario Inc. All Rights Reserved.</a>
						</li>
						<li>
							<a href="#" class="text-light">Address: Toronto  Canada</a>
						</li>
						<li>
							<a href="#" class="text-light">Terms and Conditions  |  Privacy Policy</a>
						</li>
					</ul>
				</div>
				<!-- <div class="col-sm-6 col-md-3 pb-4">
					<h4 class="mb-4">
						About
					</h4>
					<ul class="list-unstyled">
						<li>
							<a href="#" class="text-light">Company</a>
						</li>
						<li>
							<a href="#" class="text-light">Team</a>
						</li>
						<li>
							<a href="#" class="text-light">Careers</a>
						</li>
					</ul>
				</div>
				<div class="col-md-6 pb-4">
					<h4 class="mb-4">
						Web development tools
					</h4>
					<ul class="list-unstyled">
						<li>
							<a href="https://www.phpcrudgenerator.com/tutorials/how-to-create-a-bootstrap-crud-admin-dashboard" class="text-light">How to create a Bootstrap Admin Dashboard in PHP</a>
						</li>
						<li>
							<a href="https://www.phpformbuilder.pro/drag-n-drop-form-builder/index.html" class="text-light">Drag &amp; drop form builder</a>
						</li>
						<li>
							<a href="https://www.tinymce-bootstrap-plugin.com/" class="text-light">Bootstrap plugin for TinyMce</a>
						</li>
					</ul>
				</div> -->
			</div>
			<div class="col d-flex justify-content-center mb-4">
				<a href="#" class="d-block px-3"><img src="https://cdnjs.cloudflare.com/ajax/libs/webicons/2.0.0/webicons/webicon-facebook-m.png" alt="Facebook" /></a><a href="#" class="d-block px-3"><img src="https://cdnjs.cloudflare.com/ajax/libs/webicons/2.0.0/webicons/webicon-twitter-m.png" alt="Twitter" /></a><a href="#" class="d-block px-3"><img src="https://cdnjs.cloudflare.com/ajax/libs/webicons/2.0.0/webicons/webicon-instagram-m.png" alt="Instagram" /></a><a href="#" class="d-block px-3"><img src="https://cdnjs.cloudflare.com/ajax/libs/webicons/2.0.0/webicons/webicon-linkedin-m.png" alt="Linkedin" /></a>
			</div>
			<p class="text-center text-secondary border-top border-secondary py-4">
				Bookkeeper © 2021
			</p>
		</div>
	</footer>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>