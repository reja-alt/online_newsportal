@extends('layouts.frontend_layout')
@section('front_content')
<div class="container pl-5 pr-5">
  <section class="news-details-area ptb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="blog-details-desc">
                	{!!$data->details_bn!!}
                </div>
            </div>
        </div>
    </div>
  </section>
</div>
@endsection