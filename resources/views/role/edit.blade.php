@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('admin.update.role',$role->id) }}" method="POST" role="form" >
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
                            <h1>Update User Role</h1>
                            <div class="form-group">
                                <label class="control-label" for="bangla_name">Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="bangla_name" id="bangla_name" value="{{ $role->bangla_name }}" required="" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="english_name">English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="english_name" id="english_name" value="{{$role->english_name }}" required="" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="name">Email <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="email" name="email" id="email" value="{{ $role->email  }}" required="" />
                            </div>

                            <strong class="text-center">Role Access Area:----</strong><br>
                            <div class="row"><br>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_category" value="1" @if($role->role_category==1) checked="" @endif />
                      			            <span></span>
                      			           Category
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_division" value="1" @if($role->role_division==1) checked="" @endif />
                      			            <span></span>
                      			           Divisions
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_post" value="1" @if($role->role_post==1) checked="" @endif />
                      			            <span></span>
                      			            Post
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_jobpost" value="1" @if($role->role_jobpost==1) checked="" @endif />
                      			            <span></span>
                      			           Job Post
                      			        </label>
                      			    </div>
                      			</div>
                            </div>

                            <div class="row">
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_writer" value="1" @if($role->role_writer==1) checked="" @endif />
                      			            <span></span>
                      			           Writers
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_setting" value="1" @if($role->role_setting==1) checked="" @endif />
                      			            <span></span>
                      			           Settings
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_ads" value="1"  @if($role->role_ads==1) checked="" @endif />
                      			            <span></span>
                      			            Advertisements
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_gallery" value="1" @if($role->role_gallery==1) checked="" @endif />
                      			            <span></span>
                      			           Image Gallery
                      			        </label>
                      			    </div>
                      			</div>
                            </div>

                            <div class="row">
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_widget" value="1" @if($role->role_widget==1) checked="" @endif />
                      			            <span></span>
                      			           Widgets
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_page" value="1" @if($role->role_page==1) checked="" @endif />
                      			            <span></span>
                      			           Pages
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_report" value="1" @if($role->role_report==1) checked="" @endif />
                      			            <span></span>
                      			            Reports
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_message" value="1" @if($role->role_message==1) checked="" @endif />
                      			            <span></span>
                      			           Message/Application
                      			        </label>
                      			    </div>
                      			</div>
                            </div>

                            <div class="row">
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_userrole" value="1" @if($role->role_userrole==1) checked="" @endif />
                      			            <span></span>
                      			           User Role
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_filemanager" value="1" @if($role->role_filemanager==1) checked="" @endif />
                      			            <span></span>
                      			           File Manager
                      			        </label>
                      			    </div>
                      			</div>
                      			
                            </div>
                           
                           	<br>
                            <div class="tile-footer">
                                <button class="btn btn-sm btn-success btn-uppercase pull-right" type="submit"> <i class="fa fa-fw fa-sm fa-check-circle"> </i> SUBMIT </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

