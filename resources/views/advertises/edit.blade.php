@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('advertise.update',$advertise->id) }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <strong>Whoops!</strong> There were some problems with your input.<br><br>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    <div class="card">
                        <div class="card-body">
                            <h1>Edit Adevertise</h1>  
                            <div class="form-group label-floating">
                                <label class="control-label">Advertise Type</label>
                                <select name="ads_type" id="ads_type" class="form-control">
                                    <option>-----Select-----</option>
                                    <option value="1" @if($advertise->ads_type == 1) selected="" @endif>Google Ads</option>
                                    <option value="2"  @if($advertise->ads_type == 2) selected="" @endif>Vertical Ads</option>
                                    <option value="3"  @if($advertise->ads_type == 3) selected="" @endif>Horizontal Ads</option>
                                </select>   
                            </div>
                            
                            <div class="form-group"  id="advertise_code">
                                <label class="control-label" for="ads_code">Advertise Code <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="ads_code" id="ads_code" value="{{ $advertise->ads_code }}"/>
                            </div>


                            <div class="form-group"  @if($advertise->ads_type==2 || $advertise->ads_type==3) @else id="advertise_link" @endif>
                                <label class="control-label" for="ads_link">Advertise Link <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="ads_link" id="ads_link" value="{{ $advertise->ads_link }}"/>
                            </div>  
                           
                            <div class="input-group mb-3"  @if($advertise->ads_type==2 || $advertise->ads_type==3) @else id="hide_image" @endif>
                                <div class="custom-file" id="customImage">
                                    <span class="input-group-text">Upload</span>
                                        <input type="file" class="custom-file-input"  id="customImage" name="ads_image">
                                        <label class="custom-file-label" for="inputGroupFile01">Choose image</label>
                                </div>
                            </div>

                            <div class="form-group label-floating">
                                <label class="control-label">Status</label>
                                    <select id="status" name="status"   class="form-control" >
                                        <option>-----Select-----</option>
                                            <option value="1" @if($advertise->ads_status == 1) selected="" @endif >Active </option>
                                            <option value="0" @if($advertise->ads_status == 0) selected="" @endif >Inactive </option>
                                    </select>
                            </div>     
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('advertise.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>


$(document).ready(function () {
    $('#advertise_code').hide();
    $('#advertise_link').hide();
    $('#hide_image').hide();
    $('#hide_status').hide();
    $('#ads_type').on('change', function() {
    var el = $('#advertise_link');
    var e2 = $('#hide_image');
    var e3 = $('#hide_status');

    if (this.value === '1') {
        el.show();
        e2.show();
        e3.hide();
        
        
    } else {
        el.show();
        e2.show();

      
    }

    });

    $('#ads_type').on('change', function() {
    var el = $('#advertise_code');
    
    if (this.value === '2' || this.value === '3') {
        el.hide();
        e3.show();
       
        
    } else {
        el.show();
    
      }
    });

});
</script>

@endpush