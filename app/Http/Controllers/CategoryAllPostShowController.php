<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Category;
use App\Post;

class CategoryAllPostShowController extends Controller
{
    public function show($id)
    {
        $Cat=Category::find($id);
        $posts = Post::where('cat_id',$id)->paginate(6);
        return view('frontend_view.category_all_posts',compact('Cat','posts'));
       
    }
}
