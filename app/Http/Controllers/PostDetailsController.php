<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Post;
use App\User;
use App\Category;
use Carbon\Carbon;


class PostDetailsController extends Controller
{
    
    public function index()
    {
        
        return view('frontend_view.post_details');
    }

  
    public function create()
    {
        
    }

  
    public function store(Request $request)
    {
       
    }

  
    public function show($slug_bn)
    {
        
        $id = Post::where('slug_bn',$slug_bn)->first()->id;
        $show_post =DB::table('posts')->where('id', $id)->first();
        $writer=User::where('id',$show_post->user_id)->first();
        $slug = Post::where('slug_bn', $slug_bn)->first();
        $related_posts = Post::with('category')->where('cat_id', '=', $show_post->cat_id)->where('id', '!=',$show_post->id)->get();
        $previous = Post::where('id', '<',$id)->orderBy('id')->first();
        $next = Post::where('id', '>', $id)->orderBy('id')->first();
        $count_view=DB::table('posts')->where('id', $id)->increment('view');
        return view('frontend_view.post_details',compact('show_post','count_view','previous','next','related_posts','writer'));
    }

  
    public function edit($id)
    {
        //
    }

    
    public function update(Request $request, $id)
    {
        //
    }

    
    public function destroy($id)
    {
        
    }
}
