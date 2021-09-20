
@extends('layouts.frontend_layout')
@section('meta')
  <meta property="og:url" content="{{Request::fullUrl()}}" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="{{$show_jobnews_post->title_bn}}" />
  <meta property="og:description" content="{{$show_jobnews_post->details_bn}}" />
  <meta property="og:image" content="{{asset('uploads/post')}}/{{$show_jobnews_post->image}}" />
@endsection
@section('front_content')
  <!-- Start News Details Area -->
  <div class="container pl-5 pr-5">
  @php
     $advertisements= DB::table('advertisements')->select('advertisements.*')->orderBy('id','ASC')->skip(2)->take(1)->get(); 
  @endphp
@foreach ($advertisements as $advertisement)
<div class="row">
    <div class="container">
        <div class="col-lg-10">
        <a href="{{$advertisement->ads_link}}">
                <img src="{{asset('public/uploads/ads')}}/{{$advertisement->ads_image}}" style="margin-left: 15%;">
            </a>
        </div>    
    </div>
</div>
@endforeach
  <section class="news-details-area ptb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="blog-details-desc">
                   
           
                    <div class="article-image">
                        <img src="{{asset('public/uploads/jobpost')}}/{{$show_jobnews_post->image}}" alt="image" style="width: 800px; height: 400px;">
                    </div>

                    <div class="article-content">
                    <span><a href="#">{{$writer->bangla_name}}</a> / {{ \Carbon\Carbon::parse($show_jobnews_post->created_at)->format('j F, Y')}} / <a href="#">{{$show_jobnews_post->view}} View</a></span>
                        <h3 style="font-size: 30px; font-family:SolaimanLipi; line-height: 38px; font-weight: 500;"><a href="{{route('jobnews.show',$show_jobnews_post->slug_bangla)}}">{{$show_jobnews_post->title_bn}}</h3>
                            <h4 class="title usmall"><a href="#" style="font-size: 16px; font-family: SolaimanLipi; font-weight: 400; line-height: 38px; color: rgb(8, 8, 8);" >{{($show_jobnews_post->details_bn)}}</a></h4>
                    </div>
                  
                    <div class="article-footer">
                        <div class="article-share">
                            <ul class="social">
                                <li><span>Share:</span></li><br>
                                <div class="sharethis-inline-share-buttons ml-5" data-href="{{url()->current()}}"></div>
                            </ul>
                        </div>
                    </div>

                    <div class="post-navigation">
                        <div class="navigation-links">
                            <div class="nav-previous">
                               
                                <a href="{{ URL::To( 'jobnewspost/'. $previous->slug_bangla ) }}">
                                    <i class='bx bx-chevron-left'></i>
                                    Prev Post
                                </a>
                            </div>
                            <div class="nav-next">
                                <a href="{{ URL::To( 'jobnewspost/'. $next->slug_bangla ) }}">
                                    Next Post 
                                    <i class='bx bx-chevron-right'></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    @if(empty($related_posts))
                    <p style="color:red;"> Sorry ! No Related Post Found.</p>
                    @else
                    <div class="health-news">
                        <div class="section-title"> 
                            <h2>Related Posts</h2> 
                        </div>

                        <div class="health-news-slides owl-carousel owl-theme">
                            @foreach($related_posts->take(5) as $key => $related_post)
                            <div class="single-health-news">
                               
                                <div class="health-news-image">
                                    <a href="#">
                                        <img src="{{asset('public/uploads/jobpost')}}/{{$related_post->image}}" alt="image" style="width: 400px; height: 230px;">
                                    </a>
                                </div>
                                
                                <div class="health-news-content">
                                    <span></span>
                                    <h3>
                                        <a href="{{route('jobnews.show',$related_post->slug_bangla)}}">{{$related_post->title_bn}}</a>
                                    </h3>
                                    
                                </div>
                            </div>
                                @endforeach
                            
                        </div>
                    </div>
                    @endif
                 <div class="comment-area">
                    
                    <ul class="list_none comment_list">
                    <div class="fb-comments" data-href="{{Request::url()}}" data-numposts="5" data-width=""></div>   
                    </ul>
                </div>
                  
                </div>
            </div>

            <div class="col-lg-4">
                <aside class="widget-area">
                    <div class="widget widget_search">
                        <form class="search-form">
                            <label>
                                <span class="screen-reader-text">Search for:</span>
                                <input type="search" class="search-field" placeholder="Search...">
                            </label>
                            <button type="submit">
                                <i class='bx bx-search'></i>
                            </button>
                        </form>
                    </div>

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
                                    <img src="{{asset('public/uploads/ads')}}/{{$advertisement->ads_image}}" style="width: 400px; height: 200px;">
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
                    $advertisements= DB::table('advertisements')->where('ads_type',2)->orderBy('id','ASC')->skip(7)->take(1)->get(); 
                    @endphp
                    @foreach ($advertisements as $advertisement)
                    <div class="row">
                        <div class="container">
                            <div class="col-lg-12">
                            <a href="{{$advertisement->ads_link}}">
                                    <img src="{{asset('public/uploads/ads')}}/{{$advertisement->ads_image}}" style="width: 400px; height: 200px;">
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
</div>
</section>
<!-- Start News Details Area -->

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