<!DOCTYPE html>
<html lang="en">
	<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
		<!-- Google Tag Manager -->
		<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&amp;l='+l:'';j.async=true;j.src= '../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-5FS8GGP');</script>
		<!-- End Google Tag Manager -->
		<meta charset="utf-8" />

		<title>SD Online Newsportal | Newspaper</title>
		@yield('meta')
		<meta name="description" content="SD Newsportal Application Admin Panel" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<link rel="canonical" href="https://speedigit.com" />
		<meta name="csrf-token" content="{{ csrf_token() }}">
		<!--begin::Fonts-->
		<link type="text/css" rel="stylesheet" href="{{ mix('css/app.css') }}">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Vendors Styles(used by this page)-->
		<link href="{{url('public/')}}/assets/plugins/custom/fullcalendar/fullcalendar.bundle9816.css?v=7.1.3" rel="stylesheet" type="text/css" />
		<!--end::Page Vendors Styles-->
		<!--begin::Global Theme Styles(used by all pages)-->
		<link href="{{url('public/')}}/assets/plugins/global/plugins.bundle9816.css?v=7.1.3" rel="stylesheet" type="text/css" />
		<link href="{{url('public/')}}/assets/plugins/custom/prismjs/prismjs.bundle9816.css?v=7.1.3" rel="stylesheet" type="text/css" />
		<link href="{{url('public/')}}/assets/css/style.bundle9816.css?v=7.1.3" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Styles-->
		
		<link rel="stylesheet" href="vendors/select2/css/select2.min.css" type="text/css">
		<!--begin::Layout Themes(used by all pages)-->
		<link href="{{url('public/')}}/assets/css/themes/layout/header/base/light9816.css?v=7.1.3" rel="stylesheet" type="text/css"/>
		<link href="{{url('public/')}}/assets/css/themes/layout/header/menu/light9816.css?v=7.1.3" rel="stylesheet" type="text/css"/>
		<link href="{{url('public/')}}/assets/css/themes/layout/brand/dark9816.css?v=7.1.3" rel="stylesheet" type="text/css"/>
		<link href="{{url('public/')}}/assets/css/themes/layout/aside/dark9816.css?v=7.1.3" rel="stylesheet" type="text/css"/>
		<!--end::Layout Themes-->
		<link href="{{url('public/')}}/assets/plugins/custom/data-table/datatable.min.css" rel="stylesheet" type="text/css"/>
		<link href="{{url('public/')}}/assets/plugins/custom/toastrjs/toastr.min.css" rel="stylesheet" type="text/css"/>
		<link href="{{url('public/')}}/assets/plugins/custom/dorpify/css/dropify.min.css" rel="stylesheet" type="text/css"/>
		<link rel="shortcut icon" href="https://preview.keenthemes.com/metronic/theme/html/demo1/dist/assets/media/logos/favicon.ico"/>
       

        <link rel="shortcut icon" href="https://preview.keenthemes.com/metronic/theme/html/demo1/dist/assets/media/logos/favicon.ico"/>
		<!-- Hotjar Tracking Code for keenthemes.com -->
        <script>(function(h,o,t,j,a,r){ h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)}; h._hjSettings={hjid:1070954,hjsv:6}; a=o.getElementsByTagName('head')[0]; r=o.createElement('script');r.async=1; r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv; a.appendChild(r); })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');</script>
        @yield('styles')
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body">
		
		
		@if(auth::check())
		<div class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
		@include('partial.mobile_header')
		@endif

		@if(auth::check())
		<div class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="d-flex flex-row flex-column-fluid page">
				@include('partial._sidebar')
				@endif
				<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
				@if(auth::check())
				@include('partial._header')
				@endif
                    @yield('content')
				</div>
			</div>
			<!--end::Page-->
		</div>
		</div>

		<!--end::Main-->
        	<!-- begin::User Panel-->
		<div id="kt_quick_user" class="offcanvas offcanvas-right p-10">
			<!--begin::Header-->
			<div class="offcanvas-header d-flex align-items-center justify-content-between pb-5">
				<h3 class="font-weight-bold m-0">User Profile 
				<small class="text-muted font-size-sm ml-2">12 messages</small></h3>
				<a href="#" class="btn btn-xs btn-icon btn-light btn-hover-primary" id="kt_quick_user_close">
					<i class="ki ki-close icon-xs text-muted"></i>
				</a>
				
				
			</div>
		
			
			<div class="offcanvas-content pr-5 mr-n5">
				<!--begin::Header-->
				<div class="d-flex align-items-center mt-5">
					
					<div class="d-flex flex-column">
						<a href="#" class="font-weight-bold font-size-h5 text-dark-75 text-hover-primary"></a>
						
				   @if(auth::check())
						<div class="navi mt-2">
						   <label for="">Email</label>
						   <span class="text-dark-50 font-weight-bolder font-size-base d-none d-md-inline mr-3">{{auth()->user()->email}}</span>
						</div>
						
						<div class="navi mt-2">
						  <img src="{{url('public/uploads/post/'.auth()->user()->image)}}" width=50px; height=50px; class="rounded-circle" alt="avatar">
						</div>
						<div class="navi mt-2">
						<form id="logout_form"  action="{{ route('logout') }}" method="POST">@csrf
							<button type="submit"  class="btn btn-sm btn-light-primary font-weight-bolder py-2 px-5">logout</button>
						</form>
							</div>
						</div>
					</div>
					<div class="navi navi-spacer-x-0 p-0">
						 <!--begin::Item-->
						  <a href="{{route('password.edit')}}" class="navi-item">
							<div class="navi-link">
								<div class="symbol symbol-40 bg-light mr-3">
									<div class="symbol-label">
										<span class="svg-icon svg-icon-md svg-icon-success">
											<!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Notification2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24"></rect>
													<path d="M13.2070325,4 C13.0721672,4.47683179 13,4.97998812 13,5.5 C13,8.53756612 15.4624339,11 18.5,11 C19.0200119,11 19.5231682,10.9278328 20,10.7929675 L20,17 C20,18.6568542 18.6568542,20 17,20 L7,20 C5.34314575,20 4,18.6568542 4,17 L4,7 C4,5.34314575 5.34314575,4 7,4 L13.2070325,4 Z" fill="#000000"></path>
													<circle fill="#000000" opacity="0.3" cx="18.5" cy="5.5" r="2.5"></circle>
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</div>
								</div>
								<div class="navi-text">
									<div class="font-weight-bold">Profile Setting</div>
									<span class="label label-light-danger label-inline font-weight-bold">change</span></div>
								</div>
						
						 </a>
						 <a href="{{route('admin.panel.edit')}}" class="navi-item">
							<div class="navi-link">
								<div class="symbol symbol-40 bg-light mr-3">
									<div class="symbol-label">
										<span class="svg-icon svg-icon-md svg-icon-success">
											<!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/General/Notification2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24"></rect>
													<path d="M13.2070325,4 C13.0721672,4.47683179 13,4.97998812 13,5.5 C13,8.53756612 15.4624339,11 18.5,11 C19.0200119,11 19.5231682,10.9278328 20,10.7929675 L20,17 C20,18.6568542 18.6568542,20 17,20 L7,20 C5.34314575,20 4,18.6568542 4,17 L4,7 C4,5.34314575 5.34314575,4 7,4 L13.2070325,4 Z" fill="#000000"></path>
													<circle fill="#000000" opacity="0.3" cx="18.5" cy="5.5" r="2.5"></circle>
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</div>
								</div>
								<div class="navi-text">
									<div class="font-weight-bold">Admin Panel Setting</div>
									<span class="label label-light-danger label-inline font-weight-bold">change</span></div>
								</div>
						
						 </a>

					</div>

					</div>
				</div>
				@endif
				<!--end::Header-->
				<!--begin::Separator-->
				<div class="separator separator-dashed mt-8 mb-5"></div>
				<!--end::Separator-->
				<!--begin::Nav-->
					
				<!--end::Nav-->
				<!--begin::Separator-->
				<div class="separator separator-dashed my-7"></div>
				<!--end::Separator-->
				
			</div>
			<!--end::Content-->
			<!-- Logout form for global -->
			
			<!-- Logout form for global end -->
		</div>
		<!-- end::User Panel-->
		
	
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop">
			<span class="svg-icon">
				<!--begin::Svg Icon | path:/metronic/theme/html/demo1/dist/assets/media/svg/icons/Navigation/Up-2.svg-->
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<polygon points="0 0 24 0 24 24 0 24" />
						<rect fill="#000000" opacity="0.3" x="11" y="10" width="2" height="10" rx="1" />
						<path d="M6.70710678,12.7071068 C6.31658249,13.0976311 5.68341751,13.0976311 5.29289322,12.7071068 C4.90236893,12.3165825 4.90236893,11.6834175 5.29289322,11.2928932 L11.2928932,5.29289322 C11.6714722,4.91431428 12.2810586,4.90106866 12.6757246,5.26284586 L18.6757246,10.7628459 C19.0828436,11.1360383 19.1103465,11.7686056 18.7371541,12.1757246 C18.3639617,12.5828436 17.7313944,12.6103465 17.3242754,12.2371541 L12.0300757,7.38413782 L6.70710678,12.7071068 Z" fill="#000000" fill-rule="nonzero" />
					</g>
				</svg>
				<!--end::Svg Icon-->
			</span>
		</div>
		<!--end::Scrolltop-->
		
		
		<script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
    	<script src="{{url('public')}}/assets/plugins/global/plugins.bundle9816.js?v=7.1.3"></script>
		<script src="{{url('public')}}/assets/plugins/custom/prismjs/prismjs.bundle9816.js?v=7.1.3"></script>
		<script src="{{url('public')}}/assets/js/scripts.bundle9816.js?v=7.1.3"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Vendors(used by this page)-->
		<script src="{{url('public')}}/assets/plugins/custom/fullcalendar/fullcalendar.bundle9816.js?v=7.1.3"></script>
		<!--end::Page Vendors-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="{{url('public')}}/assets/js/pages/widgets9816.js?v=7.1.3"></script>

		<!--Data table js link-->
		<script src="{{url('public')}}/assets/plugins/custom/data-table/datatable.min.js"></script>
		<!--Data table js link end-->

		<!--Sweet alert js link-->
		<script src="{{url('public')}}/assets/plugins/custom/sweet-alert/sweet-alert.min.js"></script>
		<!--Sweet alert js link end-->
        <script src="vendors/select2/js/select2.min.js"></script>
		
		<!--Toaster.js js link-->
		<script src="{{url('public')}}/assets/plugins/custom/toastrjs/toastr.min.js"></script>
		<!--Toaster.js js link end-->

		<!--dropify js link-->
		<script src="{{url('public')}}/assets/plugins/custom/dropify/js/dropify.min.js"></script>
		<script src="{{url('public')}}/assets/plugins/custom/dropify/js/dropify.active.js"></script>
		<script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5faa35088499cb00120cc73f&product=inline-share-buttons" async="async"></script>
        
		<!--dropify js js link end-->

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" />   
		<script>
			$(document).ready(function(){
				$('#logout_option').on('click', function(e){
					e.preventDefault();
					$('#logout_form').submit();
				}); 
			});
		</script>
		<script type="text/javascript">
			   $(document).ready(function (){
			    $('#myTable').DataTable({
			    });
			});
		</script>
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

        @stack('scripts')
		<div id="fb-root"></div>
          <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v9.0" nonce="bPWhxoii"></script>

          <script>
				$(function(){
			$(".limit_text").each(function(i){
			len=$(this).text().length;
			if(len>10)
			{
			$(this).text($(this).text().substr(0,20)+'...');
			}
			});
			});

</script>
	</body>
</html>