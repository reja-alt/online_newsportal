<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class ApplicationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function Contact()
    {
    	$contact=DB::table('contact_msg')->where('status',0)->get();
    	return view('contact.message',compact('contact'));
    }

    public function DeleteContact($id)
    {
    	DB::table('contact_msg')->where('id',$id)->delete();
    	 $notification=array(
            'message' => 'Successfully Delete',
            'alert-type' => 'success'
          );
        return redirect()->back()->with( $notification);
    }

    public function WriterApplication()
    {
    	$application=DB::table('writer_application')->where('status',0)->get();
    	return view('contact.writer_application',compact('application'));
    }

    public function DeleteApplication($id)
    {
    	DB::table('writer_application')->where('id',$id)->delete();
    	 $notification=array(
            'message' => 'Successfully Delete',
            'alert-type' => 'success'
          );
        return redirect()->back()->with( $notification);
    }


}
