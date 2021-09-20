@extends('layouts.admin_layout')

@push('styles')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
@endpush

@section('content')
<div class="separator separator-dashed mt-8 mb-5"></div> 
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="tile">
                
                <form action="{{ route('opinions.update',$opinions->id) }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Edit Opinions</h1> 
                    <div class="form-group">
                        <label class="control-label" for="title_bn">Title Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control" type="text" name="title_bn" id="title_bn" value="{{ $opinions->title_bn }}"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="title_en">Title English Name <span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control" type="text" name="title_en" id="title_en" value="{{ $opinions->title_bn }}"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="details_bn">Details Bangla<span class="m-l-5 text-danger"> *</span></label>
                        <textarea class="form-control" id="summernote" name="details_bn" >{{ $opinions->details_bn }}</textarea>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="details_en">Details English<span class="m-l-5 text-danger"> *</span></label>
                        <textarea class="form-control" id="summernote" name="details_en" >{{ $opinions->details_en }}</textarea>
                    </div>
                    <div class="form-group label-floating">
                        <label class="control-label">Writer Bangla Name</label>
                        <select name="writer_name" class="form-control" >
                            <option >  ----select one ------  </option>
                                <option value="{{auth()->user()->id}}">{{auth()->user()->bangla_name}} | {{auth()->user()->english_name}}</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="published_date">Published Date<span class="m-l-5 text-danger"> *</span></label>
                        <input class="form-control " type="date" name="published_date" id="published_date" value="{{ $opinions->published_date }}"/>
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
                        <button class="btn btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Job News</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('opinions.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="separator separator-dashed mt-8 mb-5"></div>
@endsection

@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script type="text/javascript">
    $('#summernote').summernote({
        height: 100
    });
</script>
<script type="text/javascript">
    $('#summernote2').summernote({
        height: 100
    });
</script>
@endpush