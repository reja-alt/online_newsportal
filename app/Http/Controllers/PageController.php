<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;

class PageController extends Controller
{
    public function index()
    {
        //
    }
    public function create()
    {
        return view('pagenames.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
        ]);
        
        $pages= new Page();
        $pages->name_bn= $request->name_bn;
        $pages->name_en= $request->name_en;
        $pages->save();
    
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
    );
    return view('pagenames.create')->with( $notification);
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
