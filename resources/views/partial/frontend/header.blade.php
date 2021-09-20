  @php 
    $offon=DB::table('offon')->first();
  @endphp
<div class="top-header-area bg-color">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <ul class="top-header-social">
                    @php
                        $social_links=DB::table('sociallinks')->orderBy('id','DESC')->get();
                    @endphp
                    @foreach($social_links as $social_link)
                    <li class="top-header-social">
                    <a href="{{$social_link->facebook}}" class="facebook" target="_blank">
                            <i class='bx bxl-facebook'></i>
                        </a>
                    </li>
                    <li>
                        <a href="{{$social_link->instagram}}" class="pinterest" target="_blank">
                            <i class='bx bxl-instagram'></i>
                        </a>
                    </li>
                    <li>
                        <a href="{{$social_link->linkedin}}" class="pinterest" target="_blank">
                            <i class='bx bxl-linkedin'></i>
                        </a>
                    </li>
                    <li>
                        <a href="{{$social_link->twitter}}" class="twitter" target="_blank">
                            <i class='bx bxl-twitter'></i>
                        </a>
                    </li>
                    <li>
                        <a href="{{$social_link->pinterest}}" class="pinterest" target="_blank">
                            <i class='bx bxl-pinterest'></i>
                        </a>
                    </li>
                    @endforeach
                </ul>
            </div>

            @if($offon->language==1)
            <div class="col-lg-6 text-right">
                <ul class="top-header-others">
                    <li>
                        <div class="dropdown language-switcher d-inline-block">
                            <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span>Language <i class='bx bx-chevron-down'></i></span>
                            </button>

                            <div class="dropdown-menu">
                                <a href="#" class="dropdown-item d-flex align-items-center">
                                    <img src="assets/img/english.png" class="shadow-sm" alt="flag">
                                    <span>English</span>
                                </a>
                            </div>
                        </div>
                    </li> 
                </ul>
            </div>
            @else
            @endif
        </div>
    </div>
</div>
@php
    $settings= DB::table('settings')->orderBy('id','DESC')->first();
@endphp
 <div class="navbar-area">
            <div class="main-responsive-nav">
                <div class="container">
                    <div class="main-responsive-menu">
                        <div class="logo">
                            <a href="{{route('frontend.home-show')}}">
                                <img src="{{asset('public/uploads/post')}}/{{$settings->logo}}" alt="Online Newspaper">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-navbar">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="index.html">
                            <img src="assets/img/logo-1.png" alt="image">
                        </a>

                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                               @foreach($categories as $category)
                                   @if($category->category_on_header == 1)
                                       <li class="nav-item">
                                           
                                           <a href="{{ route('category.posts.show', $category->slug_bn) }}" class="nav-link " style="font-size: 14px;">
                                               {{$category->name_bn}}<i class='bx bx-chevron-down'></i> 
                                               
                                           </a>
                                           <ul class="dropdown-menu">
                                               @foreach($category->subcategories as $subcategory)
                                               <li class="nav-item">
                                                   <a href="{{ route('subcategory.posts', $subcategory->slug_bn) }}" class="nav-link">
                                                       {{$subcategory->name_bn}}
                                                   </a>
                                               </li>
                                               @endforeach
                                           </ul>
                                       </li>
                                   @endif
                               @endforeach
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
       </div>
<br>
