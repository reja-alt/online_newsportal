<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Subcategory;
use App\Category;
use App\User;
use App\Division;
use App\District;
use App\Subdistrict;
use DB;
use Image;
use Carbon\Carbon;
use Storage;
use Auth;
use app\Notifications\ArticlePublished;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Response;


class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $posts = DB::table('posts')
        ->Join('categories', 'posts.cat_id', '=', 'categories.id')
        ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
        ->Join('users', 'posts.user_id', '=', 'users.id')
        
        ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
        ->get();

        return view('posts.index',compact('posts'));
    }
    public function create()
    {
        $categories=Category::all();
        $subcategories=Subcategory::all();
        $divisions=Division::all();
        $districts=District::all();
        $subdistricts=Subdistrict::all();
        $writers=User::where('status',1)->get();
        $category_name = DB::table('users')
        ->Join('categories', 'users.cat_id', '=', 'categories.id')
        ->select('users.*','categories.name_bn as cat_bangla_name','categories.name_en as cat_english_name')
        ->get();
        
        return view('posts.create',compact('categories','subcategories','writers','divisions','districts','subdistricts','category_name'));
    }

    public function store(Request $request, Post $post)
    {
        
        $image = $request->file('image');
        $slug_bn = Str::of($request->title_bn)->slug('-');
        $slug_en = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {
//           make unipue name for image
            
            $imageName  = $slug_bn.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(900, 500)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
           
        }
        $currentDate = Carbon::now()->format('Y-m-d H:i:s');
        
        
        
        $posts=new Post();
        $posts->cat_id=$request->category_name;
        $posts->sub_cat_id=$request->subcat_name;
        $posts->user_id=$request->writer_name;
        $posts->division_id=$request->division_name;
        $posts->district_id=$request->district_name;
        $posts->subdistrict_id=$request->subdistrict_name;
        $posts->title_en=$request->title_en;
        $posts->title_bn=$request->title_bn;
        $posts->image=$imageName;
        $posts->details_en=$request->details_en;
        $posts->details_bn=$request->details_bn;
        $posts->published_date=$currentDate;
        $posts->month=date('F');
        $posts->year=date('Y');
        $posts->tags_en=$request->tags_en;
        $posts->tags_bn=$request->tags_bn;
        $posts->slug_bn=$slug_bn;
        $posts->slug_en=$slug_en;
        $posts->headline_en=$request->headline_en;
        $posts->headline_bn=$request->headline_bn;
        $posts->status=$request->status;   
        if(Auth::user()->status==2){
            $posts->approve=1;
        }else{
            $posts->approve=0;
        }

        $posts->thumbnail_select=$request->thumbnail_select;
        $posts->headline=$request->headline;
        $posts->first_section=$request->first_section;
        $posts->category_first_section=$request->category_first_section;
        $posts->subcategory_first_section=$request->subcategory_first_section;
        $posts->division_first_section=$request->division_first_section;
        $posts->save();
        // $posts->notify(new ArticlePublished);

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        if(Auth::user()->status == 2){
            return redirect('/post')->with($notification);
        }else{
            return redirect()->route('writer.post.index')->with($notification);
        }
    
        
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $posts=Post::findorFail($id);
        $categories=Category::all();
        $subcategories=Subcategory::all();
        $writers=User::where('status',2)->get();
        $divisions=Division::all();
        $districts=District::all();
        $subdistricts=Subdistrict::all();
        if(Auth::user()->status==2){
            return view('posts.edit',compact('posts','categories','subcategories','writers','divisions','districts','subdistricts'));
        }else{
            return view('posts.writer.edit',compact('posts','categories','subcategories','writers','divisions','districts','subdistricts'));
        }
        
    }
    public function update(Request $request, $id)
    {
       
        
       
        $image = $request->file('image');
        // $slug_bn = Str::of($request->title_bn)->slug('-');
        $slug_bn =Str::slug($request->title_bn,'-');

        $slug_en = Str::slug($request->title_en,'-');
        if(isset($image))
        {
//           make unipue name for image
            $imageName  = $slug_en.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(900, 500)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = $request->old_image;
        }


        
        $posts=Post::findOrFail($id);
        $posts->cat_id=$request->category_name;
        $posts->sub_cat_id=$request->subcat_name;
        $posts->user_id=$request->writer_name;
        $posts->division_id=$request->division_name;
        $posts->district_id=$request->district_name;
        $posts->subdistrict_id=$request->subdistrict_name;
        $posts->title_en=$request->title_en;
        $posts->title_bn=$request->title_bn;
        $posts->image=$imageName;
        $posts->details_en=$request->details_en;
        $posts->details_bn=$request->details_bn;
        $posts->tags_en=$request->tags_en;
        $posts->tags_bn=$request->tags_bn;
        $posts->slug_bn=$slug_bn;
        $posts->slug_en=$slug_en;
        $posts->headline_en=$request->headline_en;
        $posts->headline_bn=$request->headline_bn;
        $posts->status=$request->status;   
        if(Auth::user()->status==2){
            $posts->approve=1;
        }else{
            $posts->approve=0;
        }

        $posts->thumbnail_select=$request->thumbnail_select;
        $posts->headline=$request->headline;
        $posts->first_section=$request->first_section;
        $posts->category_first_section=$request->category_first_section;
        $posts->subcategory_first_section=$request->subcategory_first_section;
        $posts->division_first_section=$request->division_first_section;
        $posts->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        if(Auth::user()->status==2){
            return redirect('/post')->with($notification);
        }else{
            return redirect()->route('writer.post.index')->with($notification);
        }
            
       
    
    }

    public function destroy($id)
    {
        $user=Post::findOrFail($id);
        $user->delete();
        $notification=array(
            'message'=>'Successfully Deleted',
            'alert-type'=>'success'
        );
     
        return redirect()->route('post.index')->with($notification);
    }

    public function filtercategory(Request $request)
    {
        if($request->ajax()){
            $get_data = Subcategory::where('category_id',$request->id)->get();
                $data = view('posts.select-ajax',compact('get_data'))->render();
                return response()->json(['options'=>$data]);
            }
    }
    
    public function filterdistrict(Request $request)
    {
        if($request->ajax()){
            $get_data = District::where('div_id',$request->id)->get();
                $data = view('posts.select-ajax',compact('get_data'))->render();
                return response()->json(['options'=>$data]);
            }
    }
    public function filtersubdistrict(Request $request)
    {
        if($request->ajax()){
            $get_data = Subdistrict::where('district_id',$request->id)->get();
                $data = view('posts.subdis-filter',compact('get_data'))->render();
                return response()->json(['options'=>$data]);
            }
    }

    public function WriterPostPage()
    {
        $categories=Category::where('id',Auth::user()->cat_id)->get();  //1,2,3  => feature , sports ,electiom
        $subcategories=Subcategory::all();
        $divisions=Division::all();
        $districts=District::all();
        $subdistricts=Subdistrict::all();
        $writers=User::where('status',1)->get();
        $category_name = DB::table('users')
        ->Join('categories', 'users.cat_id', '=', 'categories.id')
        ->select('users.*','categories.name_bn as cat_bangla_name','categories.name_en as cat_english_name')
        ->get();
        
        return view('posts.writer.create',compact('categories','subcategories','writers','divisions','districts','subdistricts','category_name'));
        
    }

    public function WriterPostIndex()
    {
        $posts = DB::table('posts')
        ->Join('categories', 'posts.cat_id', '=', 'categories.id')
        ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
        ->Join('users', 'posts.user_id', '=', 'users.id')
        
        ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
        ->where('posts.user_id',Auth::id())
        
        ->get();
      
        return view('posts.writer.index',compact('posts'));
    }
    public function WriterPostEdit()
    {
        $posts=Post::findorFail($id);
        $categories=Category::where('id',Auth::user()->cat_id)->get();
        $subcategories=Subcategory::all();
        $writers=User::where('status',1)->get();
        $divisions=Division::all();
        $districts=District::all();
        $subdistricts=Subdistrict::all();
        $category_name = DB::table('users')
        ->Join('categories', 'users.cat_id', '=', 'categories.id')
        ->select('users.*','categories.name_bn as cat_bangla_name','categories.name_en as cat_english_name')
        ->get();
        return view('posts.writer.edit',compact('posts','categories','subcategories','writers','divisions','districts','subdistricts','category_name'));
    }
   
}
