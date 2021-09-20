@extends('layouts.admin_layout')

@section('content')
  <br>
    <div class="row">
        <div class="card col-md-8 mx-auto p-4">
            <div class="tile">    
                <form action="{{ route('admin.logo.update') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                     <div class="custom-file">  
                          <label class="custom-file-label" for="customFile">Logo</label>
                          <input type="file" class="custom-file-input" id="customImage" name="admin_logo" required="">  
                     </div>
                     <br>
                    <div class="model footer"><br>
                        <button class="btn btn-success btn-uppercase" type="submit"> <i class="ti-check-box mr-2"></i>Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection

