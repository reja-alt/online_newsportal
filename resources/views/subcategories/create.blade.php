@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10  col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('subcategory.store') }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Add Subcategory</h1> 
                            <div class="form-group">
                                <label class="control-label">category Bangla Name</label>
                                    <select name="cat_name" class="form-control">
                                        @foreach($categories as $category)
                                            <option value="{{$category->id}}">{{$category->name_bn}} | {{$category->name_en}} 
                                            </option>
                                        @endforeach
                                    </select>
                            </div> 
                            <div class="form-group">
                                <label class="control-label" for="name"> Subcategory Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="name_bn" id="name_bn" value="{{ old('name_bn') }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="name">Subcategory English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="name_en" id="name_en" value="{{ old('name_en') }}"/>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Status</label>
                                    <select id="show_on_header" name="show_on_header" required class="form-control">
                                        <option>-----Select-----</option> 
                                        <option value="1">Active </option>
                                        <option value="0">Inactive </option>
                                    </select>
                            </div>
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('subcategory.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>  
@endsection

