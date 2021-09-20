@extends('layouts.frontend_layout')
@section('front_content')
        <section class="contact-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                       

                        <div class="contact-form">
                            <div class="title">
                                <h3>আপনার মন্তব্য লিখুন </h3>
                                
                            </div>
                            @if (session('message'))
                                <div class="alert alert-success">
                                    {{ session('message') }}
                                </div>
                            @endif
                            <form  action="{{route('store.contact.message')}}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="name" class="form-control" id="name" required data-error="Please enter your name" placeholder="Name" required="">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="email" name="email" class="form-control" id="email" required data-error="Please enter your email" placeholder="Email" required="">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="phone" class="form-control" id="phone_number" required data-error="Please enter your phone number" placeholder="Phone" required="">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="subject" class="form-control" id="subject" required data-error="Please enter your subject" placeholder="Subject" required="">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <textarea name="message" id="message" class="form-control" cols="30" rows="6" required data-error="Please enter your message" placeholder="Write your message..."></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="checkme" required="">
                                            <label class="form-check-label" for="checkme">
                                                Accept <a href="{{route('terms.page')}}">Terms of Services</a> and <a href="{{route('privacy.page')}}">Privacy Policy.</a>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <button type="submit" class="default-btn">Send Message</button>
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <aside class="widget-area">
                            <section class="widget widget_stay_connected">
                                <h3 class="widget-title">যোগাযোগ করুন </h3>
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
                                                <li>টুইট: <a href="https://twitter.com/sdnews" class="text-black"><strong>@Sdnews </strong></a></li>
                                                <li>আমাদের পড়ুন <a href="{{route('terms.page')}}" class="text-black"><strong> গোপনীয়তা নীতি </strong></a></li>
                                        </ul>
                                    </div>
                                       
                                </div>
                     
                            </section>

                            <section class="widget widget_newsletter">
                                <div class="newsletter-content">
                                    <h3>Subscribe to our newsletter</h3>
                                    <p>Subscribe to our newsletter to get the new updates!</p>
                                </div>   
                                @if (session('subscribe'))
                                    <div class="alert alert-success">
                                        {{ session('subscribe') }}
                                    </div>
                                @endif
                                <form class="newsletter-form"  method="post" action="{{route('subscribe.now')}}">
                                    @csrf
                                    <input type="email" class="input-newsletter" placeholder="Enter your email" name="EMAIL" required autocomplete="off">
            
                                    <button type="submit">Subscribe</button>
                                    <div id="validator-newsletter" class="form-result"></div>
                                </form>
                            </section>
                        </aside>
                    </div>
                </div>
            </div>
        </section>
@endsection