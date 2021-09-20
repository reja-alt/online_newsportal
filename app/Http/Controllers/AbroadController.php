<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Str;
use Carbon\Carbon;
use Image;
use DB;
use App\Abroad;

class AbroadController extends Controller
{
    
    public function index()
    {
       $posts=Abroad::with('user')->get();
        return view('abroads.index',compact('posts'));
    }

    
    public function create()
    {
      return view('abroads.create');
    }

    
    public function store(Request $request)
    {
        $this->validate($request, [
            'title_bn' => 'required',
            'title_en' => 'required',
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

            if (!file_exists('uploads/abroad'))
            {
                mkdir('uploads/abroad',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/abroad/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        
        
        
        $abroads=new Abroad();
        $abroads->title_en=$request->title_en;
        $abroads->title_bn=$request->title_bn;
        $abroads->slug_bangla=$slug_bangla;
        $abroads->slug_english=$slug_english;
        $abroads->details_bn=$request->details_bn;
        $abroads->details_en=$request->details_en;
        $abroads->writer_id=$request->writer_name;
        $abroads->image=$imageName;
        $abroads->published_date=$currentDate;
        $abroads->status=$request->status;   
        $abroads->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/abroad')->with($notification);
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $abroad=Abroad::findorFail($id);
        return view('abroads.edit',compact('abroad'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title_bn' => 'required',
            'title_en' => 'required',
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

            if (!file_exists('uploads/abroad'))
            {
                mkdir('uploads/abroad',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/abroad/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        
        
        
        $abroads=Abroad::findOrFail($id);
        $abroads->title_en=$request->title_en;
        $abroads->title_bn=$request->title_bn;
        $abroads->slug_bangla=$slug_bangla;
        $abroads->slug_english=$slug_english;
        $abroads->details_bn=$request->details_bn;
        $abroads->details_en=$request->details_en;
        $abroads->writer_id=$request->writer_name;
        $abroads->image=$imageName;
        $abroads->published_date=$currentDate;
        $abroads->status=$request->status;   
        $abroads->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/abroad')->with($notification);
    }

 
    public function destroy($id)
    {
        $abroad=Abroad::findOrFail($id);
        $abroad->delete();
     
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('abroad.index')->with($notification);
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
