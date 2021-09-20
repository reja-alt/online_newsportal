<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Subcategory;
use Carbon\Carbon;
use App\Setting;
use App\Post;
use App\Subscribe;
use App\Division;
use App\District;
use App\Advertisement;
use App\Subdistrict;
use App\Notice;
use App\SocialPage;
use DB;
use \Illuminate\Support\Str;
use App\Sociallink;

class FrontendController extends Controller
{
    public function index()
    {
        
        $post = Post::where('first_section','1')->orderBy('id','desc')->first();
        $post_smalls= Post::where('thumbnail_select', 0)->where('category_first_section',null)->orderBy('id', 'desc')->skip(15)->limit(3)->get();
        $six_posts= Post::orderBy('id', 'ASC')->skip(2)->take(6)->get();
        $advertisements_first= DB::table('advertisements')->orderBy('id','ASC')->where('ads_type',3)->take(2)->get();
        $advertisements_second= Advertisement::orderBy('id','ASC')->where('ads_type',3)->skip(2)->take(2)->get();
        $advertisements_third= Advertisement::orderBy('id','ASC')->where('ads_type',3)->skip(4)->take(1)->get();
        $advertisements_forth= Advertisement::orderBy('id','ASC')->where('ads_type',3)->skip(5)->take(1)->get();
        $advertisements_fifth= Advertisement::orderBy('id','ASC')->where('ads_type',3)->skip(6)->take(1)->get();
        $advertisements_six= Advertisement::orderBy('id','ASC')->where('ads_type',3)->skip(7)->take(1)->get();
        $advertisements_seven= Advertisement::orderBy('id','ASC')->where('ads_type',3)->skip(8)->take(1)->get();
        $social_pages=SocialPage::orderBy('id','ASC')->limit(1)->get();
        $divisions=Division::all();
        $districts=District::all();
        $subdistricts=Subdistrict::all();
        
        return view('frontend_view.home',compact('post','post_smalls','six_posts', 'advertisements_first', 'advertisements_second','advertisements_third', 
        'advertisements_forth','social_pages','divisions','districts','subdistricts','advertisements_fifth','advertisements_six','advertisements_seven'));  
    }
    

    public function SubcategoryPosts($slug_bn)
    {
     
        $subcat=Subcategory::where('slug_bn',$slug_bn)->first();
        // $category = Category::where('id',$subcat->id)->first();
        $posts = Post::where('sub_cat_id',$subcat->id)->paginate(16);
        return view('frontend_view.subcategory_posts',compact('subcat','posts'));
    }

    public function CategoryPostsShow($slug_bn)
    {
   
        $category=Category::where('slug_bn',$slug_bn)->first();
        // $cat=Category::find($id);
        $posts = Post::where('cat_id',$category->id)->paginate(20);

       // return response()->json($posts);
        return view('frontend_view.category_post_show',compact('posts','category'));
    } 
    public function Subscribs(Request $request)
    {

        $this->validate($request, [
            'email' => 'required | unique',
        ]);
        $subscribes=new Subscribe();
        $subscribes->email=$request->email;
        $subscribes->save();

        return redirect()->back()->with('subscribe','Successfully Message Sent');
    } 
    public function filterdistrict($id)
    {
            $get_data = District::where('div_id',$id)->get();
            $data = view('frontend_view.select_district_filter',compact('get_data'))->render();
            return response()->json(['options'=>$data]);
         
    }
    public function filtersubdistrict($id)
    {
        $get_data=Subdistrict::where('district_id',$id)->get();
        $data= view('frontend_view.select_subdistrict_filter',compact('get_data'))->render();
        return response()->json(['options'=>$data]);
    }

    public function about()
    {
        $data=DB::Table('abouts')->first();
        return view('frontend_view.page',compact('data'));
    }

     public function terms()
    {
        $data=DB::Table('terms')->first();
        return view('frontend_view.page',compact('data'));
    }

    public function privacy()
    {
        $data=DB::Table('privacies')->first();
        return view('frontend_view.page',compact('data'));
    }

    public function ads()
    {
        $data=DB::Table('give_ads')->first();
        return view('frontend_view.page',compact('data'));
    }

    public function contact()
    {
       return view('frontend_view.contact');
    }

    public function StoreContactMessage(Request $request)
    {
        $data=array();
        $data['name']=$request->name;
        $data['email']=$request->email;
        $data['phone']=$request->phone;
        $data['subject']=$request->subject;
        $data['message']=$request->message;
        $data['status']=0;
        DB::table('contact_msg')->insert($data);
        return redirect()->back()->with('message','Successfully Message Sent');
    } 

    public function StoreApplication(Request $request)
    {
        $data=array();
        $data['name']=$request->name;
        $data['email']=$request->email;
        $data['phone']=$request->phone;
        $data['address']=$request->address;
        $data['education']=$request->education;
        $data['passing_year']=$request->passing_year;
        $data['message']=$request->message;
        $data['status']=0;
        DB::table('writer_application')->insert($data);
        return redirect()->back()->with('message','Successfully Message Sent');
    }

    public function WritrApplication()
    {
         return view('frontend_view.writer_application');
    }


}
