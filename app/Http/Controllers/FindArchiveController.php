<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Post;

class FindArchiveController extends Controller
{
    public function show(Request $request)
    {
    //    return $request;
        // {"_token":"hdIFizVscSeDgA06mqrZ2Qh8Vl5pW8QTlcoXupmv","division_name":"3","district_name":"9","subdistrict_name":"27"}

      $archive_posts=DB::table('posts')->orderBy('id','DESC')
                                 ->where('cat_id',$request->category_name)
                                 ->orWhere('division_id',$request->division_name)
                                 ->orwhere('district_id',$request->district_name)
                                 ->paginate(8);
        return view('frontend_view.archive.find_archive_post',compact('archive_posts'));
    }
}
