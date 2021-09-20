<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notice;
use DB;

class NoticeShowController extends Controller
{
    public function show($slug_bangla)
    {
        
        $id= DB::table('notices')->where('slug_bangla',$slug_bangla)->first()->id;
        $post= Notice::where('id',$id)->first();
        $related_posts=Notice::where('id','!=',$id)->get();
        // $previous = Notice::where('id', '<', $id)->first();
        // $next = Notice::where('id', '>', $id)->first();
        $count_view= Notice::where('id',$id)->increment('view');
        return view('frontend_view.notice_details',compact('post','related_posts','count_view'));
    
    }
}
