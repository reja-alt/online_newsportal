@extends('layouts.admin_layout')

@push('styles')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
@endpush

@section('content')
<div class="container p-20">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                
                <form action="{{ route('image-gallery.update',$images->id) }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Add New Image</h1> 
                            <div class="form-group">
                                <label class="control-label" for="title_bn">Title<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="title" id="title" value="{{ $images->title }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="description">Description<span class="m-l-5 text-danger"> *</span></label>
                                <textarea class="form-control" name="description">{{ $images->description }}</textarea>
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
                            <div class="tile-footer">
                                <button class="btn bnt-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save Images</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('image-gallery.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="separator separator-dashed mt-8 mb-5"></div>
@endsection


