@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('writer.store') }}" method="POST" role="form" enctype="multipart/form-data">
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
                                <label class="control-label" for="category_name">Category name <span class="m-l-5 text-danger"> *</span></label>
                                <select name="category_name" id="category_name" class="form-control">
                                    <option>-----Select-----</option>
                                    @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name_en}} | {{$category->name_bn}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="bangla_name">Writer Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="bangla_name" id="bangla_name" value="{{ old('bangla_name') }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="english_name">Writer English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="english_name" id="english_name" value="{{ old('english_name') }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="name">Email <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="email" name="email" id="email" value="{{ old('email') }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="password" name="password" id="password" value="{{ old('password') }}"/>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Upload</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input"  id="customImage" name="image">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose image</label>
                                </div>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Status</label>
                                <select id="status" name="status"   class="form-control" >
                                    <option>-----Select-----</option>
                                    <option value="1">Active </option>
                                    <option value="0">Inactive </option>
                                </select>
                            </div>
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save </button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('writer.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

