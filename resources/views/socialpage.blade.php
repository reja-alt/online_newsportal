@extends('layouts.admin_layout')

@push('styles')
<link rel="stylesheet" href="vendors/tagsinput/bootstrap-tagsinput.css" type="text/css">

@endpush

@section('content')
  
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="tile">
                
                <form action="{{ route('socialpage.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    
                    <div class="form-group">
                        <label class="control-label" for="facebook_bn">Facebook Bangla Name<span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control " type="text" name="facebook_bn" id="facebook_bn" value="{{old('facebook_bn')}}" placeholder="Facebook"/>
                        
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="facebook_en">Facebook English  Name<span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control " type="text" name="facebook_en" id="facebook_en" value="{{old('facebook_en')}}" placeholder="Facebook"/>
                        
                    </div>
                        <div class="form-group">
                            <label class="control-label" for="facebook_page">Facebook Page<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="facebook_page" id="facebook_page" value="{{old('facebook_page')}}" placeholder="Facebook"/>
                            
                        </div>
                        <div class="form-group label-floating">
                         <label class="control-label">Status</label>

                         <select id="fb_status" name="fb_status"   class="form-control" >
                         <option>-----Select-----</option>
                            <option value="1">Active </option>
                            <option value="0">Inactive </option>
                        </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="youtube_page">Youtube Page<span class="m-l-5 text-danger"> *</span></label>
                            
                            <input class="form-control " type="text" name="youtube_page" id="youtube_page" placeholder="Twitter" value="{{old('youtube_page')}}"/>
                            
                        </div>
                        <div class="form-group label-floating">
                         <label class="control-label">Status</label>

                         <select id="yt_status" name="yt_status"   class="form-control" >
                         <option>-----Select-----</option>
                            <option value="1">Active </option>
                            <option value="0">Inactive </option>
                        </select>
                        </div>
              
                       <div class="model footer">
                   
                        <button class="btn btn-success btn-uppercase" type="submit"> <i class="ti-check-box mr-2"></i>Save</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('socialpage.index') }}"><i class="ti-trash mr-2"></i>Cancel</a>
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
