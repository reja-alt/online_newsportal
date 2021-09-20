@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('prayer.update',$prayer->id) }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Add Prayers</h1>
                            <div class="form-group">
                                <label class="control-label" for="prayer_name_bn"> Prayer Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="prayer_name_bn" id="prayer_name_bn" value="{{ $prayer->prayer_name_bn}}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="prayer_name_en"> Prayer English Name<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="prayer_name_en" id="prayer_name_en" value="{{ $prayer->prayer_name_bn}}"/>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Status</label>
                                <select id="status" name="status" required class="form-control">
                                    <option>-----Select-----</option> 
                                    <option value="1">Active </option>
                                    <option value="0">Inactive </option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="adhan"> Adhan<span class="m-l-5 text-danger"> *</span></label>
                                <input type="datetime-local" autocomplete="on" id="adhan" name="adhan" class="form-control" value="" >
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="iqamah">Iqamah<span class="m-l-5 text-danger"> *</span></label>
                                <input type="datetime-local" autocomplete="on" id="iqamah" name="iqamah" class="form-control" value="" >
                            </div>       
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save Data</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('prayer.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>  
@endsection

