@extends('layouts.admin_layout')

@push('styles')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
@endpush
@section('content')
<div class="container p-10"> 
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile"> 
                <form action="{{ route('nonprofit.update',$nonprofit->id) }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Edit News</h1>    
                            <div class="form-group">
                                <label class="control-label" for="title_bn">Title Bangla<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="title_bn" id="title_bn" value="{{ $nonprofit->title_bn }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="title_en">Title English<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="title_en" id="title_en" value="{{ $nonprofit->title_en }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="description_bn">Description Bangla <span class="m-l-5 text-danger"> *</span></label>
                                <textarea class="form-control" id="summernote" name="description_bn" > {{ $nonprofit->description_bn }} </textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="description_en">Description English <span class="m-l-5 text-danger"> *</span></label>
                                <textarea class="form-control" id="summernote2" name="description_en"  > {{ $nonprofit->description_en }}</textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="amount">Amount<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="amount" id="amount" value="{{ $nonprofit->amount }}"/>
                            </div>
                           
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Upload</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input"  id="customImage" name="image">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose image</label>
                                    <input type="hidden" name="old_image" value="{{$nonprofit->image}}">
                                </div>
                            </div>
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('nonprofit.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
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
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
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