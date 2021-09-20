@extends('layouts.admin_layout')

@push('styles')
<link rel="stylesheet" href="vendors/tagsinput/bootstrap-tagsinput.css" type="text/css">

@endpush

@section('content')
  @php 
    $seo=DB::table('seos')->first();
  @endphp
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="tile">
                
                <form action="{{ route('seo.update') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    
                        <div class="form-group">
                            <label class="control-label" for="meta_title">Meta Title<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="meta_title" id="meta_title" value="{{$seo->meta_title}}" placeholder="Meta Title"/>
                            <input type="hidden" name="id" value="{{$seo->id}}">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="meta_tag">Meta Tag<span class="m-l-5 text-danger"> *</span></label>
                            
                            <input class="form-control " type="text" name="meta_tag" id="meta_tag" placeholder="Meta Tag" value="{{$seo->meta_tag}}"/>
                            
                        </div>
                        

                        <div class="form-group">
                            <label class="control-label" for="meta_description">Meta Description<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="meta_description" id="meta_description"  placeholder="Meta Description" value="{{$seo->meta_description}}"/>
                            
                        </div>

                       

                        <div class="form-group">
                            <label class="control-label" for="meta_author" >Meta Author<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="meta_author" placeholder="Meta Author" id="meta_author" value="{{$seo->meta_author}}"/>
                            
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="google_analytics" >Google Analytics<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="google_analytics" placeholder="Google Analytics " id="google_analytics" value="{{$seo->google_analytics}}"/>
                            
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="google_verification">Google Verification<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="google_verification" placeholder="Google Verification" id="google_verification" value="{{$seo->google_verification}}"/>
                            
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="bing_verification">Bing Verification<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="bing_verification" placeholder="Bing Verification" id="bing_verification" value="{{$seo->bing_verification}}"/>
                            
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="alexa_analytics">Alexa Analytics<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="alexa_analytics" placeholder="Alexa Analytics" id="alexa_analytics" value="{{$seo->alexa_analytics}}"/>
                            
                        </div>
  
                        
                        
                        

                    <div class="model footer">
                   
                        <button class="btn btn-success btn-uppercase" type="submit"> <i class="ti-check-box mr-2"></i>Save</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('post.index') }}"><i class="ti-trash mr-2"></i>Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection

@push('scripts')
<script src="vendors/tagsinput/bootstrap-tagsinput.js"></script>
<script src="vendors/select2/js/select2.min.js"></script>
<script>
$("input.tagsinput-example").tagsinput('items');
</script>



<script type="text/javascript">
        $("#cat_name").change(function(){
      var id = $(this).val();
      var token = $("input[name='_token']").val();
      
      $.ajax({
          url: "{{ route('cat-filter') }}",
          method: 'POST',
          data: {id:id, _token:token},
          success: function(data) {
            //   alert(data.options);
            $("select[name='subcat_name'").html('');
            $("select[name='subcat_name'").html(data.options);
          }
      });
  });
    </script>
@endpush
