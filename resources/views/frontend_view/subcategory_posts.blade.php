@extends('layouts.frontend_layout')
@section('meta')
  <meta property="og:url" content="{{Request::fullUrl()}}" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="" />
  <meta property="og:description" content="" />
  <meta property="og:image" content="" />
@endsection
@section('front_content')
@php
$advertisements= DB::table('advertisements')->where('ads_type',3)->orderBy('id','ASC')->skip(2)->take(2)->get(); 
@endphp


<div class="container">
 <div class="row">
    @foreach ($advertisements as $advertisement)
        <div class="col-lg-6">
            <a href="{{$advertisement->ads_link}}">
                <img src="{{asset('public/uploads/post')}}/{{$advertisement->ads_image}}" >
            </a>
        </div>    
      @endforeach    
 </div>
          <!-- Start Page Banner -->
          <div class="page-title-area">
            <div class="container">
                <div class="page-title-content">
                    

                <h2>{{$subcat->name_bn}}</h2>
                    <ul>
                    <li><a href="{{route('frontend.home-show')}}">হোম</a></li>
                        <li>{{$subcat->name_bn}}</li>
                    </ul>
                   
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Start Default News Area -->
        <section class="default-news-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            @foreach ($posts as $post)
                            @if($post->subcategory_first_section == 1)
                            <div class="col-lg-8">
                                <div class="single-sports-news-box">
                                    <div class="sports-news-image">
                                        <a href="#">
                                            <img src="{{asset('public/uploads/post')}}/{{$post->image}}" alt="image" style="width: 500px; height: 250px;">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">       
                                    <div class="sports-news-content">
                                        <span></span>
                                        <h3 style="font-size: 22px; font-name: SolaimanLipi; font-weigth: 500; line-height: 34px; margin-left: -50px;">
                                            <a href="#">{!!$post->title_bn!!}</a>
                                        </h3>
                                        <h3 style="font-size: 14px; font-name: SolaimanLipi; font-weigth: 400; line-height: 26px; margin-left: -50px;">
                                            <a href="#" style="color:rgb(51, 51, 51)">{!!str_limit($post->details_bn,'250','...')!!}</a>
                                        </h3>
                                    </div>
                            </div>
                            @endif
                            @endforeach
                        </div>

                        
                        <div class="row">
                            @foreach ($posts as $post)
                            @if($post->thumbnail_select == 0 && $post->subcategory_first_section != 1)
                            <div class="col-lg-6">
                                <div class="sports-news-post card p-2">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-sm-5">
                                            <div class="sports-news-image">
                                                <a href="#">
                                                    <img src="{{asset('public/uploads/post')}}/{{$post->image}}" alt="image" style="width: 160px; height: 100px;" >
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-7 col-sm-7">
                                            <div class="sports-news-content">
                                                <span></span>
                                                <h3 style="font-size: 16px; font-name: SolaimanLipi; font-weight: 500; line-height: 26px;">
                                                    <a href="{{route('postshow.show',$post->slug_bn)}}">{!!$post->title_bn!!}</a>
                                                </h3>
                                                <p style="font-size: 13px; font-family:SolaimanLipi; line-height: 18px; color:rgb(3, 3, 3); font-weight: 400; margin-top: -5px;">
                                                    {{str_limit($post->details_bn,90,'...')}}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                            @endforeach
                        </div>
                       
                        <div class="d-flex justify-content-center">
                            {!! $posts->links() !!}
                        </div>
                    @php
                        $advertisement_sides= DB::table('advertisements')->select('advertisements.*')->orderBy('id','DESC')->limit(1)->get();
                    @endphp
                    @foreach ($advertisement_sides as $advertisement_side)
                    <section class="widget widget_featured_reports">
                        <div class="single-featured-reports">
                            <div class="featured-reports-image">
                                <a href="#">
                                    <img src="{{asset('public/uploads/post')}}/{{$advertisement_side->ads_image}}" alt="image" style="height: 150px; width: 1000px; margin-top: 30px;">
                                </a>
            
                            </div>
                        </div>
                    </section>
                    @endforeach
                        
                    </div>

                    <div class="col-lg-4">
                        <aside class="widget-area">
                          
                            <section class="widget widget_latest_news_thumb">
                                <div class="daily-briefing-item">
                                <h3 class="widget-title">
                                    জনপ্রিয় সংবাদ</h3>
                                @php
                                $popular_newses= DB::table('posts')->orderBy('id', 'ASC')->skip(14)->take(5)->get(); 
                            @endphp
                            @foreach ($popular_newses as $popular_news)
                                <article class="item" style="margin-top: -20px">
                                   
                                    <a href="#" class="thumb">
                                        
                                        <img src="{{asset('public/uploads/post')}}/{{$popular_news->image}}" alt="img" class="mt-2" style="height: 60px; width: 150px;">
                                    </a>
                                    <div class="info">
                                        <h4  style="font-size: 14px; line-height: 22px; color: #000000; font-family: Solaiman Lipi;"><a href="{{route('postshow.show',$popular_news->slug_bn)}}">{{$popular_news->title_bn}}</a></h4>
                                        <h4 class="title usmall"><a href="#" style="font-size: 11px; font-weight: 500;">{{str_limit($popular_news->details_bn,'90')}}</a></h4>
                                    </div> 
                                   
                                </article>
                                @endforeach
                            </div>
                            </section>
                            @php
                            $advertisements= DB::table('advertisements')->select('advertisements.*')->orderBy('id','ASC')->skip(4)->take(1)->get(); 
                            @endphp
                            @foreach ($advertisements as $advertisement)
                            <div class="row">
                                <div class="container">
                                    <div class="col-lg-12">
                                    <a href="{{$advertisement->ads_link}}">
                                            <img src="{{asset('public/uploads/post')}}/{{$advertisement->ads_image}}" style="width: 400px; height: 200px;">
                                        </a>
                                    </div>    
                                </div>
                            </div>
                            @endforeach
                            <section class="widget widget_latest_news_thumb p-2 mt-3">
                                <div class="daily-briefing-item pl-5 pr-5" >
                                    <div class="row p-2" style="background-color: rgb(2, 152, 163); ">
                                        <h4 class="ml-5" style="font-family: Kiron; font-size: 20px; font-weight: 700; line-height: 40px;">করোনাভাইরাস আপডেট</h4>
                                    </div>
                                    
                                    <div class="row font-family-kiron p-2" style="background-color: rgb(56, 235, 248);">
                                        <div class="col-6">
                                            <h5 class="text-center pt-3 pl-3" style="font-family: Kiron; font-size: 16px; font-weight: 700; line-height: 40px;">বিশ্বব্যাপী</h5>
                                                
                                        </div>
                                        <div class="col-6">
                                            <h4 class="text-center pt-3 pl-3" style="font-family: Kiron; font-size: 16px; font-weight: 700; line-height: 40px;">বাংলাদেশ</h3>
                                            <div class="row" style="background-color: rgb(245, 248, 248); ">
                                    
                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-3" style="background-color: rgb(245, 248, 248); ">
                                    
                                        <div class="col-6">
                                            @php
                                                $covid19=DB::table('bd_covid19s')->first();
                                            @endphp
                                            @if ($covid19)
                                                <h6 class="text-center" style="font-family: Kiron; font-size: 13px; font-weight: 500; line-height: 20px;">আক্রান্ত<br><div class="p-1 mt-3" style="background-color: rgb(248, 245, 72)"><b>{{$covid19->cases_bn}}</b></div><br/></h6>
                                                <h6 class="text-center" style="font-family: Kiron; font-size: 13px; font-weight: 500; line-height: 20px;">সুস্থ<br><div class="p-1 mt-3" style="background-color: rgb(82, 252, 91)"><b>{{$covid19->cure_bn}}</b></div><br/></h6>
                                                <h6 class="text-center" style="font-family: Kiron; font-size: 13px; font-weight: 500; line-height: 20px;">মৃত্যু<br><div class="p-1 mt-3" style="background-color: rgb(250, 81, 81)"><b>{{$covid19->death_bn}}</b></div><br/><a href="https://www.worldometers.info/coronavirus/" target="_blank" style="text: center; font-family: Kiron; font-size: 10px; font-weight: 300; line-height: 20px; font-color: rgb(2, 152, 163);">তথ্যসূত্র: ওয়ার্ল্ডোমিটার</a> </h6> 
                                                
                                            @endif
                                        </div>
                                        <div class="col-6">
                                            @php
                                               $covid19=DB::table('covid19s')->first();
                                            @endphp
                                            @if ($covid19)
                                                <h6 class="text-center" style="font-family: Kiron; font-size: 13px; font-weight: 500; line-height: 20px;">আক্রান্ত<br><div class="p-1 mt-3" style="background-color: rgb(248, 245, 72)"><b>{{$covid19->cases_bn}}</b></div><br/></h6>
                                                <h6 class="text-center" style="font-family: Kiron; font-size: 13px; font-weight: 500; line-height: 20px;">সুস্থ<br><div class="p-1 mt-3" style="background-color: rgb(82, 252, 91)"><b>{{$covid19->cure_bn}}</b></div><br/></h6>
                                                <h6 class="text-center" style="font-family: Kiron; font-size: 13px; font-weight: 500; line-height: 20px;">মৃত্যু<br><div class="p-1 mt-3" style="background-color: rgb(250, 81, 81)"><b>{{$covid19->death_bn}}</b></div><br/><a href="https://www.worldometers.info/coronavirus/" target="_blank" style="text: center; font-family: Kiron; font-size: 11px; font-weight: 300; line-height: 20px; font-color: rgb(2, 152, 163);">তথ্যসূত্র: ওয়ার্ল্ডোমিটার</a> </h6>
                                            @endif
                                        </div>
                                </div>  
                            </section>
                            @php
                            $advertisements= DB::table('advertisements')->select('advertisements.*')->orderBy('id','ASC')->skip(7)->take(1)->get(); 
                            @endphp
                            @foreach ($advertisements as $advertisement)
                            <div class="row">
                                <div class="container">
                                    <div class="col-lg-12">
                                    <a href="{{$advertisement->ads_link}}">
                                            <img src="{{asset('public/uploads/post')}}/{{$advertisement->ads_image}}" style="width: 400px; height: 200px;">
                                        </a>
                                    </div>    
                                </div>
                            </div>
                            @endforeach
        
                            <section class="widget widget_latest_news_thumb mt-4">
                                <div class="daily-briefing-item">
                                <h3 class="widget-title">সর্বশেষ সংবাদ</h3>
                                @php
                                 $finals_newses= DB::table('posts')->orderBy('id', 'ASC')->skip(8)->take(5)->get(); 
                            @endphp
                            @foreach ($finals_newses as $finals_news)
                                <article class="item" style="margin-top: -20px">
                                   
                                    <a href="#" class="thumb">
                                        
                                        <img src="{{asset('public/uploads/post')}}/{{$finals_news->image}}" alt="img" class="mt-2" style="height: 60px; width: 150px;">
                                    </a>
                                    <div class="info">
                                        <h4 style="font-size: 14px; line-height: 22px; color: #000000; font-family: Solaiman Lipi;"><a href="{{route('postshow.show',$finals_news->slug_bn)}}">{{$finals_news->title_bn}}</a></h4>
                                        <h4 class="title usmall"><a href="#" style="font-size: 11px; font-weight: 500;">{{str_limit($finals_news->details_bn,'90')}}</a></h4>
                                    </div> 
                                   
                                </article>
                                @endforeach
                            </div>
                            </section>
                            <section class="widget widget_latest_news_thumb mt-4 p-3">
                                <div class="daily-briefing-item">
                                    <div class="cetagory-title-04 text-center pt-2 pb-2 mb-2" style=" background-color: rgb(76, 241, 247);"> গুরুত্বপূর্ণ ওয়েবসাইট </div>
                                    <div class="bg-four">
                                        <div class="news-title-02 pl-3 pt-3 pb-3" style="background-color: rgb(221, 241, 127)">
                                            @php
                                                $websites=DB::table('websites')->orderBy('id','DESC')->limit(5)->get();
                                            @endphp
                                            @foreach ($websites as $website)
                                        <h4 class="mt-1 ml-2" style="font-size: 13px; line-height: 20px; font-family: Solaiman Lipi;"><a href="{{$website->website_link_bn}}" target="blank"><i class="fa fa-check" aria-hidden="true">&#10004;  {{$website->website_name_bn}}</i></a> </h4>  
                                            @endforeach
                                       </div>
                                    </div>
                                </div>
                            </section>
                        </aside>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Default News Area -->
        <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5faa35088499cb00120cc73f&product=inline-share-buttons" async="async"></script>
@endsection
@push('scripts')
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
@endpush