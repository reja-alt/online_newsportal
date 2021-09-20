@extends('layouts.admin_layout')
@section('content')
 <div class="row">
    <div class="container p-20">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('division.store') }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Add Division</h1>
                            <div class="form-group">
                                <label class="control-label" for="bangla_name">Division Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="name_bn" class="name_bn" value="{{old('name_bn')}}"/>
                            </div>
                            <div class="form-group">
                                    <label class="control-label" for="english_name">Division English Name <span class="m-l-5 text-danger"> *</span></label>
                                    <input class="form-control" type="text" name="name_en" id="name_en" value="{{old('name_en')}}"/>
                            </div>
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('division.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

