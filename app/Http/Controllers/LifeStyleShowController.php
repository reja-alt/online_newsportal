<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Lifestyle;
use App\User;
use DB;

class LifeStyleShowController extends Controller
{
    public function show($slug_bangla)
    {
        $id = Lifestyle::where('slug_bangla',$slug_bangla)->first()->id;
        $show_lifestyle_post =Lifestyle::where('id', $id)->first();
        $writer=User::where('id',$show_lifestyle_post->writer_id)->first();
        $post = Lifestyle::find($id);
        $related_posts = Lifestyle::where('id', '!=',$id)->get();
        $previous = Lifestyle::where('id', '<', $post->id)->firstOrFail();
        $next = Lifestyle::where('id', '>', $id)->firstOrFail();
        $count_view=Lifestyle::where('id', $id)->increment('view');
        return view('frontend_view.lifestyle_post_show',compact('show_lifestyle_post','previous','next','count_view','related_posts','writer'));
    }
}
