<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DivisionArchiveController extends Controller
{ public function show(Request $request)
    {

        // {"_token":"hdIFizVscSeDgA06mqrZ2Qh8Vl5pW8QTlcoXupmv","division_name":"3","district_name":"9","subdistrict_name":"27"}

      $posts=DB::table('posts')->orderBy('id','DESC')
                                 ->where('division_id',$request->division_name)
                                ->where('district_id',$request->district_name)->paginate(2);
        return view('frontend_view.archive.find_division_archive',compact('posts'));
    }
}
