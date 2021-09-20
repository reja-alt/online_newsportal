@php 
    $seo=DB::table('seos')->first();
@endphp

<!doctype html>
<html lang="en">
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="csrf-token" content="{{ csrf_token() }}">
         @yield('meta')
         <meta name="google-site-verification" content="{{ $seo->google_verification}}">
         <meta name="description" content="{{ $seo->meta_description}}">
         <meta name="keywords" content="{{ $seo->meta_tag}}">
         <meta name="author" content="{{ $seo->meta_author}}">
         <!-- Fonts --> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
      
        <link type="text/css" rel="stylesheet" href="{{ mix('css/app.css') }}">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!-- Bootstrap CSS --> 
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/bootstrap.min.css')}}" >
        <!-- Animate CSS --> 
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/animate.min.css')}}">
        <!-- Meanmenu CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/meanmenu.css')}}">
        <!-- Boxicons CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/boxicons.min.css')}}">
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/owl.carousel.min.css')}}">
        <!-- Owl Carousel Default CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/owl.theme.default.min.css')}}">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/magnific-popup.min.css')}}">
        <!-- Style CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/assets/css/style.css')}}">
        <!-- Responsive CSS -->
		<link rel="stylesheet" href="{{asset('public/frontend/assets/css/responsive.css')}}">
		<title>{{$seo->meta_title}}</title>
        <link rel="icon" type="image/png" href="{{asset('public/frontend/assets/img/favicon.png')}}">
        <link href="{{url('')}}/assets/plugins/custom/toastrjs/toastr.min.css" rel="stylesheet" type="text/css"/>
        {!! $seo->google_analytics !!}

    </head>

    <body>
     
   
   @include('partial.frontend.header')
   <div class="main-panel">
       @yield('front_content')
   </div>
   @include('partial.frontend.footer')

        <!-- Jquery Slim JS -->
        <script src="{{asset('public/frontend/assets/js/jquery.min.js')}}"></script>
        <!-- Popper JS -->
        <script src="{{asset('public/frontend/assets/js/popper.min.js')}}"></script>
        <!-- Bootstrap JS -->
        <script src="{{asset('public/frontend/assets/js/bootstrap.min.js')}}"></script>
        <!-- Meanmenu JS -->
        <script src="{{asset('public/frontend/assets/js/jquery.meanmenu.js')}}"></script>
        <!-- Owl Carousel JS -->
        <script src="{{asset('public/frontend/assets/js/owl.carousel.min.js')}}"></script>
        <!-- Magnific Popup JS -->
        <script src="{{asset('public/frontend/assets/js/jquery.magnific-popup.min.js')}}"></script>
        <!-- Ajaxchimp JS -->
		<script src="{{asset('public/frontend/assets/js/jquery.ajaxchimp.min.js')}}"></script>
		<!-- Form Validator JS -->
		<script src="{{asset('public/frontend/assets/js/form-validator.min.js')}}"></script>
		<!-- Contact JS -->
        <script src="{{asset('public/frontend/assets/js/contact-form-script.js')}}"></script>
        <!-- Wow JS -->
        <script src="{{asset('public/frontend/assets/js/wow.min.js')}}"></script>
        <!-- Custom JS -->
        <script src="{{asset('public/frontend/assets/js/main.js')}}"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" />  
        <script>
            @if (Session::has('message'))
            var type = "{{ Session::get('alert-type', 'info') }}"
            switch(type){
            case 'info':
          
            toastr.options.timeOut = 10000;
            toastr.info("{{Session::get('message')}}");
            var audio = new Audio('audio.mp3');
            audio.play();
            break;
            case 'success':
            toastr.options.timeOut = 10000;
            toastr.success("{{Session::get('message')}}");
            var audio = new Audio('audio.mp3');
            audio.play();
            break;
            case 'warning':
            toastr.options.timeOut = 10000;
            toastr.warning("{{Session::get('message')}}");
            var audio = new Audio('audio.mp3');
            audio.play();
            break;
            case 'error':
            toastr.options.timeOut = 10000;
            toastr.error("{{Session::get('message')}}");
            var audio = new Audio('audio.mp3');
            audio.play();
            break;
            }
            @endif
        </script>
        
        <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v9.0" nonce="fbjRp6Ym"></script>



    </body>

</html>