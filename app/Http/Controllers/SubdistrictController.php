<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Division;
use App\District;
use App\Subdistrict;
use DB;

class SubDistrictController extends Controller
{
    public function index()
    {
        $subdistricts=DB::table('subdistricts')
                            ->Join('divisions','subdistricts.div_id','=','divisions.id')
                            ->Join('districts','subdistricts.district_id','=','districts.id')
                            
                            ->select('subdistricts.*','divisions.name_en as div_name_en','districts.name_bn as dis_name_bn')
                            ->get();
                            return view('subdistricts.index',compact('subdistricts'));
    }
    public function create()
    {
        $divisions=Division::all();
        $districts=District::all();
        return view('subdistricts.create',compact('divisions','districts'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'subdis_name_bn' => 'required',
            'subdis_name_en' => 'required',
        ]);
        $subdistricts=new Subdistrict();
        $subdistricts->div_id=$request->div_name;
        $subdistricts->district_id=$request->dis_name;
        $subdistricts->subdis_name_bn=$request->subdis_name_bn;
        $subdistricts->subdis_name_en=$request->subdis_name_en;$subdistricts->save();
        $notification = array(
            'message' => 'Created successfully!',
            'alert-type' => 'success'
        );
        return redirect('/subdistrict')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $subdistrict=Subdistrict::findOrFail($id);
        $divisions=Division::all();
        $districts=District::all();

        
        return view('subdistricts.edit',compact('subdistrict','divisions','districts'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'subdis_name_bn' => 'required',
            'subdis_name_en' => 'required',
        ]);
        $subdistrict=Subdistrict::findOrFail($id);
        $subdistrict->div_id=$request->div_name;
        $subdistrict->district_id=$request->dis_name;
        $subdistrict->subdis_name_bn=$request->subdis_name_bn;
        $subdistrict->subdis_name_en=$request->subdis_name_en;
        $subdistrict->save();
        $notification = array(
            'message' => 'Created successfully!',
            'alert-type' => 'success'
        );
        return redirect('/subdistrict')->with( $notification);
    }
    public function destroy($id)
    {
        $users=Subdistrict::findOrFail($id);
        $users->delete();
        $notification = array(
            'message' => 'Created successfully!',
            'alert-type' => 'success'
        );
        return redirect()->route('subdistrict.index')->with($notification);
    }

    public function filterdistrict(Request $request){
        if($request->ajax())
        {
            $get_data = District::where('div_id',$request->id)->get();
            $data = view('subdistricts.select-ajax',compact('get_data'))->render();
            return response()->json(['options'=>$data]);
        }
    }
}
