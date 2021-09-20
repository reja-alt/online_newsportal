<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\District;
use App\Subdistrict;

class ArchiveController extends Controller
{
    public function index()
    {
        return view('frontend_view.archive.archive_index');
    }
    public function filterdistrict($id)
    {
        $get_data = District::where('div_id',$id)->get();
            $data = view('frontend_view.select_district_filter',compact('get_data'))->render();
            return response()->json(['options'=>$data]);
         
    }
    public function filtersubdistrict($id)
    {
        $get_data=Subdistrict::where('district_id',$id)->get();
        $data= view('frontend_view.select_subdistrict_filter',compact('get_data'))->render();
        return response()->json(['options'=>$data]);
    }

}
