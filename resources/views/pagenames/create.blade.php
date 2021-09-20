@extends('layouts.admin_layout')
@section('content')

<div class="separator separator-dashed mt-8 mb-5"></div>
        <div class="col-md-8 mx-auto">
            <div class="tile">
         <h1>Page Name</h1><br/>
 
                <form action="{{ route('page.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                   
                        <div class="form-group">
                            <label class="control-label" for="name_bn">Page Name Bangla <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="name_bn"/>
                            @if ($errors->has('name_bn'))
                                <span class="text-danger">{{ $errors->first('name_bn') }}</span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="name_en">Page Name English <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control " type="text" name="name_en"/>
                            @if ($errors->has('name_en'))
                                <span class="text-danger">{{ $errors->first('name_en') }}</span>
                            @endif
                        </div>
                       
                        <div class="tile-footer">
                         <button class="btn btn-success btn-uppercase" type="submit"> <i class="ti-check-box mr-2"></i>Save</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('page.create') }}"><i class="ti-trash mr-2"></i>Cancel</a>
                    
                    </div>
                </form>
            </div>
        </div>
    
        <div class="separator separator-dashed mt-8 mb-5"></div>
@endsection

@push('scripts')

@endpush