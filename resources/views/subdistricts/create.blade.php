@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('subdistrict.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
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
                            <h1>Add Subdistrict</h1> 
                            <div class="form-group">
                                <label class="control-label" for="english_name">Division Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                    <select name="div_name" id="div_name" class="form-control">
                                        <option>-----Select-----</option>
                                        @foreach($divisions as $division)
                                        <option  value="{{$division->id}}">{{$division->name_bn}} | {{$division->name_en}}
                                        </option>
                                        @endforeach
                                    </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="english_name">District Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                    <select name="dis_name" id="dis_name" class="form-control">
                                        <option>-----Select-----</option>
                                        @foreach($districts as $district)
                                        <option value="{{$district->id}}">{{$district->name_bn}} | {{$district->name_en}}</option>
                                        @endforeach
                                    </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="bangla_name">Subdistrict Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="subdis_name_bn" id="subdis_name_bn" value="{{ old('subdis_name_bn') }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="english_name">Subdistrict English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="subdis_name_en" id="subdis_name_en" value="{{ old('subdis_name_en') }}"/>
                            </div>   
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('subdistrict.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
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

<script type="text/javascript">
        $("#div_name").change(function(){
      var id = $(this).val();
      var token = $("input[name='_token']").val();
      
      $.ajax({
          url: "{{ route('filter') }}",
          method: 'POST',
          data: {id:id, _token:token},
          success: function(data) {
            //   alert(data.options);
            $("select[name='dis_name'").html('');
            $("select[name='dis_name'").html(data.options);
          }
      });
  });
    </script>
@endpush