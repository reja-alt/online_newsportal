<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class DistrictPostShowController extends Controller
{
    public function show($id)
    {
        

        $district=DB::table('districts')->where('id',$id)->get();
        $posts=DB::table('posts')->where('district_id',$id)->orderBy('id','DESC')->paginate(8);
        return view('frontend_view.district_post_show',compact('posts','district'));
       
    }
}
