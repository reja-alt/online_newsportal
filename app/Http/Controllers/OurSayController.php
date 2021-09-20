<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OurSay;
use DB;
class OurSayController extends Controller
{
    
    public function index()
    {
        //
    }
    public function create()
    {
        $say=DB::table('our_says')->first();
        return view('pages.oursay',compact('say'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
    
        $oursay= array();
        $oursay['details_bn']= $request->details_bn;
        $oursay['details_en']= $request->details_en;
        DB::table('our_says')->update($oursay);
    
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
    );
        return redirect()->back()->with( $notification);
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
