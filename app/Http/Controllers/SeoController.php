<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seo;
use DB;
class SeoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        //
    }
    public function create()
    {
       
        return view('seos');
    
    }
    public function store(Request $request)
    {
       
    }
    public function updateSeo(Request $request)
    {
        $data=array();
        $data['meta_title']=$request->meta_title;
        $data['meta_tag']=$request->meta_tag;
        $data['meta_description']=$request->meta_description;
        $data['meta_author']=$request->meta_author;
        $data['google_analytics']=$request->google_analytics;
        $data['google_verification']=$request->google_verification;
        $data['bing_verification']=$request->bing_verification;
        $data['alexa_analytics']=$request->alexa_analytics;
        DB::table('seos')->where('id',$request->id)->update($data);
         $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
         return redirect()->back()->with($notification);
        
    }
}
