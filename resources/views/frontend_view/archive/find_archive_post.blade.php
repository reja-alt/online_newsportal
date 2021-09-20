@extends('layouts.frontend_layout')

@section('front_content')
    @php
    $advertisements= DB::table('advertisements')->select('advertisements.*')->orderBy('id','ASC')->skip(2)->take(1)->get(); 
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

    <section class="mt-3 p-4" style="background-color: rgba(190, 190, 190, 0.301)">
        <center><h2 class="mb-3">সব খবর</h2></center>
        <form action="{{route('find.archive.post')}}" method="GET" role="form" enctype="multipart/form-data">
        @csrf
        <div class="shadow pt-3 pb-3 ml-3 mr-3 bg-white rounded">
            <div class="row mr-5 ml-5">
                <div class="col-sm-6">
                    <div class="input-group">
                        <div class="input-group-addon">তারিখ <i class="fa fa-calendar mr-2"></i></div>
                        <input placeholder="Date" class="form-control mr-3" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date" />
                                <div class="input-group-addon">থেকে <i class="fa fa-calendar mr-2"></i></div>
                        <input placeholder="Date" class="form-control" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date" />
                    </div>
                </div>
                <div class="col-sm-3">
                    <select class="form-control" name="category_name" id="category">
                    <option value="">-- ক্যাটাগরি --</option>
                    @php
                        $post_categories=DB::table('categories')->get();
                    @endphp
                    @foreach($post_categories as $category)
                        <option value="{{$category->id}}">{{$category->name_bn}} | {{$category->name_en}}
                        </option>
                    @endforeach
                    </select>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="keyword" class="form-control" id="text_search" placeholder="আপনি কী খুঁজছেন?">
                </div>
            </div>
        </div>

            <div class="row m-4">
                <div class="col-sm-2">
                    <label for="division" class="sr-only">বিভাগ</label>
                        <select class="form-control" name="division_name" id="division_name">
                            <option>--বিভাগ--</option>
                            @php
                                $divisions=DB::table('divisions')->orderBy('id','DESC')->get();
                            @endphp
                            @foreach($divisions as $division)
                                <option value="{{$division->id}}">{{$division->name_bn}} | {{$division->name_en}}
                                </option>
                            @endforeach
                        </select>
                </div>
                <div class="col-sm-3">
                    <label for="division" class="sr-only">জেলা</label>
                        <select class="form-control" name="district_name" id="district_name">
                            <option>--জেলা--</option>
                            @php
                                $districts=DB::table('districts')->orderBy('id','DESC')->get();
                            @endphp
                            @foreach($districts as $district)
                                <option value="{{$district->id}}">{{$district->name_bn}} | {{$district->name_en}}
                                </option>
                            @endforeach
                        </select>
                </div>
                <div class="col-sm-3">
                    <label for="upozilla" class="sr-only">উপজেলা</label>
                        <select class="form-control" name="subdistrict_name" id="subdistrict_name">
                            <option>--উপজেলা--</option>
                        @php
                            $subdistricts=DB::table('subdistricts')->orderBy('id','DESC')->get();
                        @endphp
                        @foreach($subdistricts as $subdistrict)
                            <option value="{{$subdistrict->id}}">{{$subdistrict->subdis_name_bn}} | {{$subdistrict->subdis_name_en}}
                            </option>
                        @endforeach
                        </select>
                </div>
                <div class="col-sm-2">
                    <button type="submit" class="btn btn-primary btn-block">খুজুন</button>
                </div>
                <div class="col-sm-2">
                    <a href="" class="btn btn-danger btn-block">সব সংবাদ খুজুন</a>
                </div>
            </form>
                <div class="row mt-4 pl-2">
                    @foreach ($archive_posts as $archive_post)
                    <div class="col-lg-6">
                        <div class="sports-news-post">
                            <div class="row align-items-center mr-1" style="background-color: rgb(253, 253, 253);">
                                <div class="col-lg-4 col-sm-4 p-0">
                                    <div class="sports-news-image">
                                        <a href="#">
                                            <img src="{{asset('public/uploads/post')}}/{{$archive_post->image}}" alt="image" style="width: 160px; height: 100px;" >
                                        </a>
                                    </div>
                                </div>
                                
                                <div class="col-lg-8 col-sm-8">
                                    <div class="sports-news-content">
                                        <span></span>
                                        <h3 style="font-size: 15px; font-name: SolaimanLipi; font-weight: 500; line-height: 26px;">
                                            <a href="{{route('postshow.show',$archive_post->slug_bn)}}">{!!$archive_post->title_bn!!}</a>
                                        </h3>
                                        <p style="font-size: 12px; font-family:SolaimanLipi; line-height: 18px; color:rgb(3, 3, 3); font-weight: 400; margin-top: -5px;">
                                            {{str_limit($archive_post->details_bn,90,'...')}}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     @endforeach
                     {!! $archive_posts->links() !!} 
                </div>
            </div>
</section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $("#division_name").change(function(){          
          var id = $(this).val();
          var token = $("input[name='_token']").val();
          
          $.ajax({
              url: "{{ url('district-archive-filter') }}"+'/'+id,
              method: 'get',
              success: function(data) {
                //   alert(data.options);
                $("select[name='district_name'").html('');
                $("select[name='district_name'").html(data.options);
              }
          });
      });
    </script>
    <script>
        $("#district_name").change(function(){
          
          var id = $(this).val();
          var token = $("input[name='_token']").val();
          
          $.ajax({
              url: "{{ url('subdistrict-archive-filter') }}"+'/'+id,
              method: 'get',
              success: function(data) {
                //   alert(data.options);
                $("select[name='subdistrict_name'").html('');
                $("select[name='subdistrict_name'").html(data.options);
              }
          });
      });
    </script>
@endsection

@push('scripts')

@endpush