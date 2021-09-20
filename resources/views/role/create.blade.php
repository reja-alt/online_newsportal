@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="tile">
                <form action="{{ route('role.store') }}" method="POST" role="form" >
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
                            <h1>Add New Role</h1>
                            <div class="form-group">
                                <label class="control-label" for="bangla_name">Bangla Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="bangla_name" id="bangla_name" value="{{ old('bangla_name') }}" required="" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="english_name">English Name <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="text" name="english_name" id="english_name" value="{{ old('english_name') }}" required="" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="name">Email <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="email" name="email" id="email" value="{{ old('email') }}" required="" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password <span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control" type="password" name="password" id="password" value="{{ old('password') }}"  required="" />
                            </div>
                            <strong class="text-center">Role Access Area:----</strong><br>
                            <div class="row"><br>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_category" value="1" />
                      			            <span></span>
                      			           Category
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_division" value="1" />
                      			            <span></span>
                      			           Divisions
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_post" value="1" />
                      			            <span></span>
                      			            Post
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3"><br>
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_jobpost" value="1" />
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
                      			            <input type="checkbox" name="role_writer" value="1" />
                      			            <span></span>
                      			           Writers
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_setting" value="1" />
                      			            <span></span>
                      			           Settings
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_ads" value="1" />
                      			            <span></span>
                      			            Advertisements
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_gallery" value="1" />
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
                      			            <input type="checkbox" name="role_widget" value="1" />
                      			            <span></span>
                      			           Widgets
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_page" value="1" />
                      			            <span></span>
                      			           Pages
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_report" value="1" />
                      			            <span></span>
                      			            Reports
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_message" value="1" />
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
                      			            <input type="checkbox" name="role_userrole" value="1" />
                      			            <span></span>
                      			           User Role
                      			        </label>
                      			    </div>
                      			</div>
                      			<div class="form-group col-lg-3">
                      			    <div class="checkbox-inline">
                      			        <label class="checkbox">
                      			            <input type="checkbox" name="role_filemanager" value="1" />
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

