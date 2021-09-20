@extends('layouts.admin_layout')
@section('content')
<div class="container p-20">
<div class="card">
    <div class="card-body">  
        <div class="row">
            <div class="col-md-10 col-sm-10 mx-auto">
                <form action="{{ route('category.store') }}" method="POST" role="form" enctype="multipart/form-data">
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
                   
                    <h1>Add Category</h1>  
                    <div class="form-group">
                            <label class="control-label" for="name">Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="name_bn" id="name_bn" value="{{ old('name_bn') }}"/>
                    </div>
                    <div class="form-group">
                            <label class="control-label" for="name">English Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control" type="text" name="name_en" id="name_en" value="{{ old('name_en') }}"/>
                    </div>
                    <div class="form-group label-floating">
                        <label class="control-label">Show On Header</label>
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="category_on_header" name="category_on_header" value="1">
                                <label class="form-check-label" for="headline">Show Catery On Header</label>
                            </div>
                    </div> 
                   
                    <div class="tile-footer">
                        <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('category.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                    </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
@endsection

