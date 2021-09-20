<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SocialPage;

class SocialPageController extends Controller
{
    public function index()
    {
        //
    }
    public function create()
    {
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
       return view('socialpage')->with($notification);
    }
    public function store(Request $request)
    {
        $data= new SocialPage();
        $data->facebook_bn= $request->facebook_bn;
        $data->facebook_en= $request->facebook_en;
        $data->facebook_page= $request->facebook_page;
        $data->facebook_status= $request->fb_status;
        $data->youtube_page= $request->youtube_page;
        $data->youtube_status= $request->yt_status;
     
        $data->save();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return view('socialpage')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        //
    }
    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}
