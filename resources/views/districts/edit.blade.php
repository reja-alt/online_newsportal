@extends('layouts.admin_layout')
@section('content')
<div class="container p-20">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('district.update',$districts->id)}}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Edit District</h1>
                            <div class="form-group">
                                    <label class="control-label" for="english_name">Division Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                    <select name="div_name" class="form-control" >
                                        <option>-----Select-----</option>
                                        @foreach($divisions as $division)
                                            <option value="{{$division->id}}">{{$division->name_bn}} | {{$division->name_en}} </option>
                                        @endforeach
                                    </select>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label" for="bangla_name">District Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="name_bn" id="name_bn" value="{{ $districts->name_bn }}"/>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label" for="english_name">District English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="name_en" id="name_en" value="{{ $districts->name_en }}"/>
                            </div>
                            
                            <div class="tile-footer">
                                <button class="btn btn-success btn-uppercase" type="submit">
                                    <i class="fa fa-fw fa-sm fa-check-circle"></i>Save
                                </button>
                                    &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('district.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

