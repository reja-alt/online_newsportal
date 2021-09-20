<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sociallink;

class SociallinkController extends Controller
{
    public function index()
    {
        $social_links = DB::table('sociallinks')
        ->first()
        
        ->get();
      
        return view('posts.writer.index',compact('social_links'));
    }
    public function create()
    {
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
       return view('sociallinks')->with($notification);
    }
    public function store(Request $request)
    {
        $data= new Sociallink();
        $data->facebook= $request->facebook;
        $data->youtube= $request->youtube;
        $data->twitter= $request->twitter;
        $data->linkedin= $request->linkedin;
        $data->pinterest= $request->pinterest;
        $data->instagram= $request->instagram;
        
        $data->save();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return view('sociallinks')->with($notification);
    }
    public function show($id)
    {
        
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
