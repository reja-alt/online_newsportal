@extends('layouts.admin_layout')
@section('content')
  @php 
    $offon=DB::table('offon')->first();
  @endphp
  <br>
<div class=container>
    <div class="row">

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->election==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Election Section</h2>
                            <h1 class="text-white">@if($offon->election==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->election==1)
                        <a href="{{route('off.election')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.election')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->language==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Multi Language</h2>
                            <h1 class="text-white">@if($offon->language==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->language==1)
                        <a href="{{route('off.language')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.language')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->headline==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Headline</h2>
                            <h1 class="text-white">@if($offon->headline==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->headline==1)
                        <a href="{{route('off.headline')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.headline')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->header_ads==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Header Ads</h2>
                            <h1 class="text-white">@if($offon->header_ads==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->header_ads==1)
                        <a href="{{route('off.header_ads')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.header_ads')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>
    </div>
   <br> 
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->facebook_page==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Facebook Page</h2>
                            <h1 class="text-white">@if($offon->facebook_page==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->facebook_page==1)
                        <a href="{{route('off.facebook_page')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.facebook_page')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>  

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->covid19==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Covid 19</h2>
                            <h1 class="text-white">@if($offon->covid19==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->covid19==1)
                        <a href="{{route('off.covid19')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.covid19')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div> 

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->namaz==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Prayer Time</h2>
                            <h1 class="text-white">@if($offon->namaz==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->namaz==1)
                        <a href="{{route('off.namaz')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.namaz')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>  
         <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->notice==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Notice</h2>
                            <h1 class="text-white">@if($offon->notice==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->notice==1)
                        <a href="{{route('off.notice')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.notice')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>  
    </div>

       <br> 
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->photogallery==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Photo Gallery</h2>
                            <h1 class="text-white">@if($offon->photogallery==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->photogallery==1)
                        <a href="{{route('off.photogallery')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.photogallery')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div>  

        <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->biggopti==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Biggopti</h2>
                            <h1 class="text-white">@if($offon->biggopti==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->biggopti==1)
                        <a href="{{route('off.biggopti')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.biggopti')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div> 

         <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->job==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Job News</h2>
                            <h1 class="text-white">@if($offon->job==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->job==1)
                        <a href="{{route('off.job')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.job')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div> 

         <div class="col-lg-3 col-md-6 col-sm-12" >
            <div class="card"  style="background-color: @if($offon->non_profit==1) #52BE80  @else #E74C3C  @endif;">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h2 class="font-weight-bold mb-2 text-white">Non Profit</h2>
                            <h1 class="text-white">@if($offon->non_profit==1) <i class="fa fa-check text-white"></i> On @else <i class="fa fa-close text-white"></i> Off  @endif</h1>
                        </div>

                    </div>
                    @if($offon->non_profit==1)
                        <a href="{{route('off.nonprofit')}}" class="btn btn-sm btn-danger pull-right">OFF</a>
                    @else
                        <a href="{{route('on.nonprofit')}}" class="btn btn-sm btn-success pull-right"> <i class="fa fa-check text-white"></i> ON</a>
                    @endif

                </div>
            </div>
        </div> 


        
       


    </div>


</div>


@endsection


