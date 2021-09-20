<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\JobNews;
use Str;
use Carbon\Carbon;
use Image;
use DB;

class JobNewsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $jobnewses=DB::table('job_news')
        ->leftJoin('users','users.id','=','job_news.writer_id')
        ->select('job_news.*','users.bangla_name','english_name')
        ->get();
        return view('jobnewses.index',compact('jobnewses'));
    }
    public function create()
    {
      return view('jobnewses.create');
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

            if (!file_exists('uploads/jobpost'))
            {
                mkdir('uploads/jobpost',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/jobpost/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $jobnewses=new JobNews();
        $jobnewses->title_en=$request->title_en;
        $jobnewses->title_bn=$request->title_bn;
        $jobnewses->slug_bangla=$slug_bangla;
        $jobnewses->slug_english=$slug_english;
        $jobnewses->details_bn=$request->details_bn;
        $jobnewses->details_en=$request->details_en;
        $jobnewses->writer_id=$request->writer_name;
        $jobnewses->image=$imageName;
        $jobnewses->published_date=$currentDate;
        $jobnewses->status=$request->status;   
        
        $jobnewses->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/jobnews')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $jobnews=JobNews::findorFail($id);
        return view('jobnewses.edit',compact('jobnews'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title_en' => 'required',
            'title_bn' => 'required',
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
            if (!file_exists('uploads/jobpost'))
            {
               mkdir('uploads/jobpost',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/jobpost/'.$imageName);
        } else {
            $imageName = $request->old_image;
        }
        $jobnews=JobNews::findOrFail($id);
        $jobnews->title_en=$request->title_en;
        $jobnews->title_bn=$request->title_bn;
        $jobnews->slug_bangla=$slug_bangla;
        $jobnews->slug_english=$slug_english;
        $jobnews->details_bn=$request->details_bn;
        $jobnews->details_en=$request->details_en;
        $jobnews->writer_id=$request->writer_name;
        $jobnews->image=$imageName;
        $jobnews->status=$request->status;   
        $jobnews->save();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/jobnews')->with($notification);
    }
    public function destroy($id)
    {
        $jobnews=JobNews::findOrFail($id);
        $jobnews->delete();
     
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('jobnews.index')->with($notification);
    }
    public function WriterJobnewsIndex($id)
    {
        $jobnewses=DB::table('job_news')
        ->leftJoin('users','users.id','=','job_news.writer_id')
        ->select('job_news.*','users.bangla_name','english_name')
        ->where('job_news.writer_id',Auth::id())
        ->get();
        return view('jobnewses.writer.index',compact('jobnewses'));
    }
    
}
