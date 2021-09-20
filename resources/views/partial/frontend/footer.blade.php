 
  <section class="container footer-area p-5" style="background-color: #000000">
      <div class="widget widget_tag_cloud">
        <aside class="widget-area">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="tagcloud">
                        @php
                            $categoryShows=  DB::table('categories')->orderBy('id','ASC')->skip(13)->take(8)->get();
                        @endphp
                        @foreach ($categoryShows as $categoryShow)
                            <a href="{{route('category.posts.show',$categoryShow->slug_bn)}}" style="color: white" >{{$categoryShow->name_bn}}</a>
                        @endforeach
                         <a href="{{route('archive.post')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">আর্কাইভ  </a>
                </div>
            </div>
            <div class="col-lg-5 col-md-6">
                <div class="tagcloud">
                        <a href="{{route('about.page')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">আমাদের সম্পর্কে </a>
                        <a href="{{route('terms.page')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">টার্মস এন্ড কন্ডিশন </a>
                        <a href="{{route('privacy.page')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">প্রাইভেসি পলিসি </a>
                        <a href="{{route('contact.us')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">যোগাযোগ </a>
                        <a href="{{route('provide.ads')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">বিজ্ঞাপন দিন </a>
                        <a href="{{route('writer.application')}}" style="color: white; font-size: 13px; font-family: Open Sans; font-weight: 400; line-height: 22px;">লেখকের জন্য আবেদন  </a>
                      
                </div>
            </div>            
            <div class="col-lg-3">
                @php
                    $settings=DB::table('settings')->orderBy('id','DESC')->limit(1)->get();
                @endphp
                @foreach ($settings as $setting)
                <p class="small text-muted">
                <span>প্রধান নির্বাহী কর্মকর্তা : {{$setting->autherity_name_bn}} <br>© ২০২০ সর্বস্বত্ব সংরক্ষিত | {{$setting->title_bn}}</span><br>
                <i class="fa fa-map-marker"></i> {{$setting->address}}
                <br>
                <abbr title="Phone:"><i class="fa fa-phone"></i> </abbr> {{$setting->phone_number}},
                <abbr title="Facebook:"><i class="fa fa-fax"></i> </abbr> {{$setting->facebook_page}}
                <a href="https://wa.me/{{$setting->phone_number}}" class="small text-muted" target="_blank" rel="nofollow">
                <abbr title="WhatsApp:"><i class="fa fa-whatsapp"></i> </abbr> {{$setting->phone_number}}<br>
                </a>
                <span class="small">
                <abbr title="Email:"><i class="fa fa-envelope"></i> </abbr> {{$setting->email_address}}<br>
                </span>
                </p>
                @endforeach
            </div>
        </div>
     </aside>
    </div>
</section>
<!-- End Footer Area -->



<!-- Start Go Top Area -->
<div class="go-top">
    <i class='bx bx-up-arrow-alt'></i>
</div>

