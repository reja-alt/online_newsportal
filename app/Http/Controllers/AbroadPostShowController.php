<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Abroad;
use App\User;
use DB;

class AbroadPostShowController extends Controller
{
    public function show($slug_bangla)
    {
        $id = Abroad::where('slug_bangla',$slug_bangla)->first()->id;
        $show_post = Abroad::where('id', $id)->first();
        $writer=User::where('id',$show_post->writer_id)->first();
        $related_posts = Abroad::orderBy('id')->where('id', '!=', $id)->get();
        $previous = Abroad::orderBy('id')->where('id', '<',$id)->firstOrFail();
        $next = Abroad::where('id', '>', $id)->firstOrFail();
        $count_view=DB::table('abroads')->where('id', $id)->increment('view');
        return view('frontend_view.abroad_post_details',compact('show_post','previous','next','count_view','related_posts','writer'));
    }
}
