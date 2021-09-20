<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Division;
use App\District;
use DB;

class DistrictController extends Controller
{
  
  public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $districts=District::with('divisions')->get();
        return view('districts.index',compact('districts'));
    }

    
    public function create()
    {
        $divisions=Division::all();
        return view('districts.create',compact('divisions'));
    }

    
    public function store(Request $request)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
        ]);
        $districts=new District();
        $districts->div_id=$request->div_name;
        $districts->name_bn=$request->name_bn;
        $districts->name_en=$request->name_en;
        $districts->save();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/district')->with($notification);
    }

   
    public function show($id)
    {
        //
    }

    
    public function edit($id)
    {
        $districts=District::findOrFail($id);
        $divisions=Division::all();
        return view('districts.edit',compact('districts','divisions'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
        ]);
        $districts=District::findOrFail($id);
        $districts->div_id=$request->div_name;
        $districts->name_bn=$request->name_bn;
        $districts->name_en=$request->name_en;
        
        $districts->update();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/district')->with($notification);
    }

   
    public function destroy($id)
    {
        $district=District::findOrFail($id);
        $district->delete();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect()->route('district.index')->with($notification);
    }
}
