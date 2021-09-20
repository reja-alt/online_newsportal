<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Division;

class DivisionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
       $divisions=Division::all();
       return view('divisions.index',compact('divisions'));
    }
    public function create()
    {
        return view('divisions.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
            
        ]);
        $divisions=new Division();
        $divisions->name_bn=$request->name_bn;
        $divisions->name_en=$request->name_en;
        $divisions->save();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/division')->with($notification);

    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $division=Division::findOrFail($id);
        return view('divisions.edit',compact('division'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
            
        ]);
        $division=Division::findOrFail($id);
        $division->name_bn=$request->name_bn;
        $division->name_en=$request->name_en;
        $division->update();
        
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
           
       return redirect('/division')->with($notification);
    }
    public function destroy($id)
    {
        $division=Division::findOrFail($id);
        $division->delete();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect()->route('division.index')->with($notification);
    }
}
