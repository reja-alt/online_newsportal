@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('bdcovid19.store') }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Add News</h1> 
                            <div class="form-group">
                                <label class="control-label" for="case_bn">Cases In Bangla<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="case_bn" id="case_bn" value="{{old('case_bn')}}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="case_en">Cases In English <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="case_en" id="case_en" value="{{old('case_en')}}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="death_bn">Deaths In Bangla  <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="death_bn" id="death_bn" value="{{old('death_bn')}}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="death_en">Deaths In English <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="death_en" id="death_en" value="{{old('death_en')}}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="cure_bn">Cure In Bangla  <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="cure_bn" id="cure_bn" value="{{old('cure_bn')}}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="cure_en">Cure In English <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="cure_en" id="cure_en" value="{{old('cure_en')}}"/>
                            </div>
                            <div class="form-group label-floating" >
                                <label class="control-label">Status</label>
                                <select id="show_on_header" name="status"  class="form-control" full-width>
                                    <option>--Select--</option>
                                    <option value="1">Active </option>
                                    <option value="0">Inactive </option>
                                </select>
                            </div>
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"> <i class="fa fa-fw fa-sm fa-check-circle"></i></i>Save</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-danger btn-sm btn-square btn-uppercase" href="{{ route('bdcovid19.index') }}"><i class="fa fa-fw fa-sm fa-check-circle"></i></i>Cancel</a>
                            </div>
                        </div> 
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

