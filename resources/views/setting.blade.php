@extends('layouts.admin_layout')

@push('styles')
<link rel="stylesheet" href="vendors/tagsinput/bootstrap-tagsinput.css" type="text/css">

@endpush

@section('content')
  
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="tile">
                
                <form action="{{ route('setting.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label class="control-label" for="autherity_name_bn">Autherity Bangla Name<span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control " type="text" name="autherity_name_bn" id="autherity_name_bn" value="{{old('autherity_name_bn')}}" placeholder="Autherity Bangla Name"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="autherity_name_en">Autherity English Name<span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control " type="text" name="autherity_name_en" id="autherity_name_en" value="{{old('autherity_name_en')}}" placeholder="Autherity English Name"/>
                    </div>
                        <div class="form-group">
                            <label class="control-label" for="title_bn">Website Bangla Title<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="title_bn" id="title_bn" value="{{old('facebook_page')}}" placeholder="Facebook Page"/>
                        </div>    
                        <div class="form-group">
                            <label class="control-label" for="title_en">Website English Title<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="title_en" id="title_en" value="{{old('facebook_page')}}" placeholder="Facebook Page"/>
                            
                        </div> 

                        <div class="form-group">
                            <label class="control-label" for="facrbook_page">Facebook Page<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="facebook_page" id="facebook_page" value="{{old('facebook_page')}}" placeholder="Facebook Page"/>
                            
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="youtube_channel"> Youtube Channel<span class="m-l-5 text-danger"> *</span></label>
                            
                            <input class="form-control " type="text" name="youtube_channel" id="youtube_channel" placeholder="Facebook Page" value="{{old('youtube_channel')}}"/>
                            
                        </div>
                        

                        <div class="form-group">
                            <label class="control-label" for="address">Address <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="address" id="address"  placeholder="Address" value="{{old('address')}}"/>
                            
                        </div>

                       

                        <div class="form-group">
                            <label class="control-label" for="phone_number" >Phone Number<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="phone_number" placeholder="Phone Number" id="phone_number" value="{{old('phone_number')}}"/>
                            
                        </div>
                        
                        <div class="custom-file">
                             
                        <label class="custom-file-label" for="customFile">Logo</label>
                        <input type="file" class="custom-file-input" id="customImage" name="logo">
                            
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="email_address">Email Address <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="email_address" placeholder="Email Address" id="email_address" value="{{old('email_address')}}"/>
                            
                        </div>
                        
                        

                    <div class="model footer">
                   
                        <button class="btn btn-success btn-uppercase" type="submit"> <i class="ti-check-box mr-2"></i>Save</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('setting.create') }}"><i class="ti-trash mr-2"></i>Cancel</a>
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
