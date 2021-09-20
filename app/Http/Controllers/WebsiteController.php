<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Website;

class WebsiteController extends Controller
{
    public function index()
    {
        $websites=Website::all();
        return view('websites.index',compact('websites'));
    }
    public function create()
    {
        return view('websites.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'website_name_bn' => 'required',
            'website_name_en' => 'required',
            'website_link_bn' => 'required',
            'website_link_en' => 'required',
        ]);
    
        $websites= new Website();
        $websites->website_name_bn= $request->website_name_bn;
        $websites->website_name_en= $request->website_name_en;
        $websites->website_link_bn= $request->website_link_bn;
        $websites->website_link_en= $request->website_link_en;
        $websites->status= $request->status;
        $websites->save();
    
        $notification=array(
        'message' => 'Successfully Done',
        'alert-type' => 'success'
    );
        return redirect('/website')->with( $notification);
    }

    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $website=Website::findOrFail($id);
        return view('websites.edit',compact('website'));

    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'website_name_bn' => 'required',
            'website_name_en' => 'required',
            'website_link_bn' => 'required',
            'website_link_en' => 'required',
        ]);
    
        $websites=Website::findOrFail($id);
        $websites->website_name_bn= $request->website_name_bn;
        $websites->website_name_en= $request->website_name_en;
        $websites->website_link_bn= $request->website_link_bn;
        $websites->website_link_en= $request->website_link_en;
        $websites->status= $request->status;
        $websites->save();
    
        $notification=array(
        'message' => 'Successfully Done',
        'alert-type' => 'success'
    );
        return redirect('/website')->with( $notification);
    }
    public function destroy($id)
    {
        $website=Website::findOrFail($id);
        $website->delete();
        $notification=array(
            'message'=>'Successfully Deleted',
            'alert-type'=>'success'
        );
     
        return redirect()->route('website.index')->with($notification);
    }
}
