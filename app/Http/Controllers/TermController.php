<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Term;
use DB;
class TermController extends Controller
{
    public function index()
    {
        //
    }
    public function create()
    {
        $terms=DB::table('terms')->first();
        return view('pages.term',compact('terms'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
        $term= array();
        $term['details_bn']=$request->details_bn;
        $term['details_en']=$request->details_en;
       DB::table('terms')->update($term);
    
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
