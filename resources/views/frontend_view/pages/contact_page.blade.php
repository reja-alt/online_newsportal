
@extends('layouts.frontend_layout')
@section('meta')

@endsection
@section('front_content')
@php
     $advertisements=DB::table('advertisements')->orderBy('id','ASC')->limit(1)->get();
@endphp
@foreach ($advertisements as $advertisement)
<div class="row">
    <div class="container">
        <div class="col-lg-10">
        <a href="{{$advertisement->ads_link}}">
                <img src="{{asset('public/uploads/post')}}/{{$advertisement->ads_image}}" style="margin-left: 15%;">
            </a>
        </div>    
    </div>
</div>
@endforeach
<div class="m-5">
    <center><h2 style="font-size: 25px; font-family: SolaimanLipi; font-weight: 500;"> যোগাযোগ করুন </h2></center>
</div>
<div class="row">
    <div class="col-sm-6">
        <div class="card mb-5 ml-5">
            <div class="card-body"> 
                <div class="box padding20">
                    <h3 style="font-size: 20px; font-family: SolaimanLipi; font-weight: 500;">নিম্নলিখিত উপায়ে আমাদের সাথে যোগাযোগ করুন:</h3>
                    <ul>
                        @php
                            $settings=DB::table('settings')->limit(1)->get();
                        @endphp
                        @foreach ($settings as $setting)
                            <li>
                            <span>ঠিকানা : </span>
                            {{$setting->address}}
                            </li>
                            <li>ফোন: <a href="tel:{{$setting->phone_number}}"><strong>{{$setting->phone_number}}</strong></a></li>
                            <li>ইমেল: <a href="mailto:{{$setting->email_address}}"><strong>{{$setting->email_address}}</strong></a>
                            </li>
                            <li>হোয়াটসঅ্যাপ: <a href="{{$setting->phone_number}}" class="text-black"><strong>{{$setting->phone_number}}</strong></a></li>
                        @endforeach
                            <li>টুইট: <a href="https://twitter.com/jagonews24" class="text-black"><strong>@jagonews24</strong></a></li>
                            <li>আমাদের পড়ুন <a href="https://www.jagonews24.com/privacy-policy" class="text-black"><strong>গোপনীয়তা নীতি</strong></a></li>
                    </ul>
                </div>
                   
            </div>
        </div>
       
    </div>
    
        <div class="col-sm-6">
            <div class="card mr-5 mb-5">
                <div class="card-body">
                    <div class="box single-block auto shadow padding20">
                        <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.026131412971!2d90.42325301481593!3d23.782083784573707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c796c762eed9%3A0x66669764ac93e99a!2sJagonews24.com!5e0!3m2!1sen!2sbd!4v1579081439787!5m2!1sen!2sbd" width="400" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
@endsection
@push('scripts')


@endpush