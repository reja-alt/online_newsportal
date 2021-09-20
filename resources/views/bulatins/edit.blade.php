@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('bulatin.update',$bulatin->id) }}" method="POST" role="form" enctype="multipart/form-data">
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
                                <label class="control-label" for="title">Title <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="title" id="title" value="{{ $bulatin->title }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="description">Description <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="description" id="description" value="{{ $bulatin->description  }}"/>
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
                                <label class="control-label">Writer Bangla Name</label>         
                                <select name="writer_name" class="form-control" >                         
                                    <option value="{{auth()->user()->id}}">{{auth()->user()->bangla_name}} | {{auth()->user()->english_name}}</option>
                                </select>
                            </div>
                            <div class="tile-footer">
                            <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>
                            &nbsp;&nbsp;&nbsp;
                            <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('bulatin.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

