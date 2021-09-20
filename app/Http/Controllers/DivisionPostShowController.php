<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Division;
use DB;

class DivisionPostShowController extends Controller
{
    public function show($id)
    {
        $districts=DB::table('districts')->where('div_id',$id)->get();
        $division=DB::table('divisions')->where('id',$id)->first();
        $posts=DB::table('posts')->where('division_id',$id)->orderBy('id','DESC')->paginate(8);
        return view('frontend_view.division_post_show',compact('districts','posts','division'));
       
    }
}
