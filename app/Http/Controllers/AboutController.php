<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;
use DB;
class AboutController extends Controller
{
    public function index()
    {
        
    }
    public function create()
    {
         $about=DB::table('abouts')->first();
         return view('pages.about',compact('about'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
        $abouts= array();
        $abouts['details_bn']=$request->details_bn;
        $abouts['details_en']=$request->details_en;
        DB::table('abouts')->update($abouts);
        
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
