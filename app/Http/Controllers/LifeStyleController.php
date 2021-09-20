<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Lifestyle;
use Str;
use Carbon\Carbon;
use Image;
use DB;

class LifeStyleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $lifestyles=Lifestyle::with('users')->get();
        return view('lifestyles.index',compact('lifestyles'));
    }
    public function create()
    {
      return view('lifestyles.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'title_en' => 'required',
            'title_bn' => 'required',
            'image' => 'required|mimes:png,jpeg,gif',
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
        $image = $request->file('image');
        $slug_bangla = Str::of($request->title_bn)->slug('-');
        $slug_english = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug_bangla.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $lifestyles=new Lifestyle();
        $lifestyles->title_en=$request->title_en;
        $lifestyles->title_bn=$request->title_bn;
        $lifestyles->slug_bangla=$slug_bangla;
        $lifestyles->slug_english=$slug_english;
        $lifestyles->details_bn=$request->details_bn;
        $lifestyles->details_en=$request->details_en;
        $lifestyles->writer_id=$request->writer_name;
        $lifestyles->image=$imageName;
        $lifestyles->status=$request->status;   
        
        $lifestyles->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/lifestyle')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $lifestyle=Lifestyle::findorFail($id);
        return view('lifestyles.edit',compact('lifestyle'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title_en' => 'required',
            'title_bn' => 'required',
            'image' => 'required|mimes:png,jpeg,gif',
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
        $image = $request->file('image');
        $slug_bangla = Str::of($request->title_bn)->slug('-');
        $slug_english = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {

            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug_bangla.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $lifestyles=Lifestyle::findOrFail($id);
        $lifestyles->title_bn=$request->title_bn;
        $lifestyles->title_en=$request->title_en;
        $lifestyles->slug_bangla=$slug_bangla;
        $lifestyles->slug_english=$slug_english;
        $lifestyles->details_bn=$request->details_bn;
        $lifestyles->details_en=$request->details_en;
        $lifestyles->writer_id=$request->writer_name;
        $lifestyles->image=$imageName;
        $lifestyles->status=$request->status;   
        
        $lifestyles->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/lifestyle')->with($notification);
    }
    public function destroy($id)
    {
        $lifestyle=Lifestyle::findOrFail($id);
        $lifestyle->delete();
     
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('lifestyle.index')->with($notification);
    }
    // public function WriterJobnewsIndex($id)
    // {
    //     $jobnewses=DB::table('job_news')
    //     ->leftJoin('users','users.id','=','job_news.writer_id')
    //     ->select('job_news.*','users.bangla_name','english_name')
    //     ->where('job_news.writer_id',Auth::id())
    //     ->get();
    //     return view('jobnewses.writer.index',compact('jobnewses'));
    // }
}
