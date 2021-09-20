<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Hash;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Auth;

class RoleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create()
    {
    	return view('role.create');
    }

    public function rolestore(Request $request)
    {
    	 $this->validate($request, [
            'bangla_name' => 'required',
            'english_name' => 'required',   
            'email' => 'required|unique:users',   
        ]);

    	$data=array();
    	$data['bangla_name']=$request->bangla_name;
    	$data['english_name']=$request->english_name;
    	$data['email']=$request->email;
    	$data['password']=Hash::make($request->password);
    	$data['role_category']=$request->role_category;
    	$data['role_division']=$request->role_division;
    	$data['role_post']=$request->role_post;
    	$data['role_jobpost']=$request->role_jobpost;
    	$data['role_writer']=$request->role_writer;
    	$data['role_setting']=$request->role_setting;
    	$data['role_ads']=$request->role_ads;
    	$data['role_gallery']=$request->role_gallery;
    	$data['role_widget']=$request->role_widget;
    	$data['role_page']=$request->role_page;
    	$data['role_report']=$request->role_report;
    	$data['role_message']=$request->role_message;
    	$data['role_userrole']=$request->role_userrole;
    	$data['role_filemanager']=$request->role_filemanager;
    	$data['status']=2;
    	$data['admin']=0;
    	 DB::table('users')->insert($data);
    	 $notification=array(
            'message' => 'Successfully Created',
            'alert-type' => 'success'
          );
         return redirect()->back()->with( $notification);

    }

    public function index()
    {
    	$role=DB::table('users')->where('status',2)->where('admin',0)->get();
    	return view('role.index',compact('role'));
    }

    public function edit($id)
    {
    	$role=DB::table('users')->where('id',$id)->first();
    	return view('role.edit',compact('role'));
    }

    public function update(Request $request,$id)
    {
    	$data=array();
    	$data['bangla_name']=$request->bangla_name;
    	$data['english_name']=$request->english_name;
    	$data['email']=$request->email;
    	$data['role_category']=$request->role_category;
    	$data['role_division']=$request->role_division;
    	$data['role_post']=$request->role_post;
    	$data['role_jobpost']=$request->role_jobpost;
    	$data['role_writer']=$request->role_writer;
    	$data['role_setting']=$request->role_setting;
    	$data['role_ads']=$request->role_ads;
    	$data['role_gallery']=$request->role_gallery;
    	$data['role_widget']=$request->role_widget;
    	$data['role_page']=$request->role_page;
    	$data['role_report']=$request->role_report;
    	$data['role_message']=$request->role_message;
    	$data['role_userrole']=$request->role_userrole;
    	$data['role_filemanager']=$request->role_filemanager;
    	DB::table('users')->where('id',$id)->update($data);
    	 $notification=array(
            'message' => 'Successfully Updated',
            'alert-type' => 'success'
          );
         return redirect()->back()->with( $notification);

    }

    public function delete($id)
    {
    	DB::table('users')->where('id',$id)->delete();
    	$notification=array(
            'message' => 'Successfully Deleted',
            'alert-type' => 'success'
          );
         return redirect()->back()->with( $notification);

    }

}
