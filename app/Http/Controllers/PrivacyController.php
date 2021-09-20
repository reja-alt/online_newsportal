<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Privacy;
use DB;
class PrivacyController extends Controller
{
    public function index()
    {
        //
    }
    public function create()
    {
        $privacy=DB::table('privacies')->first();
        return view('pages.privacy',compact('privacy'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
        $privacy= array();
        $privacy['details_bn']= $request->details_bn;
        $privacy['details_en']= $request->details_en;
        DB::table('privacies')->update($privacy);
    
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect()->back()->with( $notification);
        
    }
  
}
