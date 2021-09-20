@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('website.update',$website->id) }}" method="POST" role="form" enctype="multipart/form-data">
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
                            <h1>Edit Websites</h1>
                            <div class="form-group">
                                <label class="control-label" for="website_name_bn">Website Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="website_name_bn" id="website_name_bn" value="{{ $website->website_name_bn }}"/>
                            </div>
                        
                            <div class="form-group">
                                <label class="control-label" for="website_name_en">Website English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="website_name_en" id="website_name_en" value="{{ $website->website_name_en }}"/>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="website_link_bn">Website Link Bangla<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="website_link_bn" id="website_link_bn" value="{{ $website->website_link_bn }}"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="website_link_en">Website Link English<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="website_link_en" id="website_link_en" value="{{ $website->website_link_en }}"/>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Status</label>
                                    <select id="status" name="status"   class="form-control" >
                                        @if ($website->status==1)
                                            <option value="1" selecetd>Active </option>
                                            <option value="0" selecetd>Inactive </option>
                                        @endif
                                    </select>
                            </div>
                                
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase" type="submit"><i class="fa fa-fw fa-sm fa-check-circle"></i>Save Website</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger btn-square btn-uppercase" href="{{ route('website.index') }}"><i class="fa fa-fw fa-sm fa-times-circle"></i>Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

