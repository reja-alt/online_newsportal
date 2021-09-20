<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Opinion;
use App\User;
class OpinionShowController extends Controller
{
    public function show($slug_bangla)
    {
        $id = Opinion::where('slug_bangla',$slug_bangla)->first()->id;
        $show_opinion_post =Opinion::where('id', $id)->first();
        $writer=User::where('id',$show_opinion_post->writer_id)->first();
        $related_posts = Opinion::where('id', '!=',$id)->get();
        $previous = Opinion::orderBy('id')->where('id', '>', $id)->first();
        $next = Opinion::orderBy('id')->where('id', '>', $id)->first();
        $count_view=Opinion::where('id', $id)->increment('view');

        return view('frontend_view.opinion_details',compact('show_opinion_post','count_view','previous','next','related_posts','writer'));
    }
}
