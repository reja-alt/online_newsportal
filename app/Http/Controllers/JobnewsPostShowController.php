<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jobnews;
use App\User;

class JobnewsPostShowController extends Controller
{
    public function show($slug_bangla)
    {
        $id = Jobnews::where('slug_bangla',$slug_bangla)->first()->id;
        $show_jobnews_post =Jobnews::where('id', $id)->first();
        $writer=User::where('id',$show_jobnews_post->writer_id)->first();
        $related_posts = Jobnews::orderBy('id','DESC')->where('id', '!=',$id)->get();
        $previous = Jobnews::where('id', '<', $id)->firstOrFail();
        $next = Jobnews::where('id', '>', $id)->firstOrFail();
        $count_view=Jobnews::where('id', $id)->increment('view');

        return view('frontend_view.jobnews_post_show',compact('show_jobnews_post','previous','next','count_view','related_posts','writer'));
    }
}
