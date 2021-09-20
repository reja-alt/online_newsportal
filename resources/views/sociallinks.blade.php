@extends('layouts.admin_layout')

@push('styles')
<link rel="stylesheet" href="vendors/tagsinput/bootstrap-tagsinput.css" type="text/css">

@endpush

@section('content')
  
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="tile">
                
                <form action="{{ route('sociallink.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    
                        <div class="form-group">
                            <label class="control-label" for="facebook">Facebook<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="facebook" id="facebook" value="{{old('facebook')}}" placeholder="Facebook"/>
                            
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="youtube">Youtube<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="youtube" id="youtube" value="{{old('facebook')}}" placeholder="Facebook"/>
                            
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="twitter">Twitter<span class="m-l-5 text-danger"> *</span></label>
                            
                            <input class="form-control " type="text" name="twitter" id="twitter" placeholder="Twitter" value="{{old('twitter')}}"/>
                            
                        </div>
                        

                        <div class="form-group">
                            <label class="control-label" for="linkedin">Linkedin <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="linkedin" id="linkedin"  placeholder="Linkedin" value="{{old('linkedin')}}"/>
                            
                        </div>

                       

                        <div class="form-group">
                            <label class="control-label" for="pinterest" >Pinterest<span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="pinterest" placeholder="Pinterest " id="pinterest" value="{{old('pinterest')}}"/>
                            
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="instagram">instagram <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="instagram" placeholder="Instagram" id="instagram" value="{{old('instagram')}}"/>
                            
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
