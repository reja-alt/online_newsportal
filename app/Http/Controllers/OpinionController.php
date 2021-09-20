<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Opinion;
use Str;
use Carbon\Carbon;
use Image;
use DB;

class OpinionController extends Controller
{
  
    public function index()
    {
        $opinions=DB::table('opinions')
        ->leftJoin('users','users.id','=','opinions.writer_id')
        ->select('opinions.*','users.bangla_name','english_name')
        ->get();
        return view('opinions.index',compact('opinions'));
    }

    public function create()
    {
      return view('opinions.create');
    }

    public function store(Request $request)
    {
        
        $image = $request->file('image');
        $slug_bn = Str::of($request->title_bn)->slug('-');
        $slug_en = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {

            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug_bn.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        
        
        
        $opinions=new Opinion();
        $opinions->title_en=$request->title_en;
        $opinions->title_bn=$request->title_bn;
        $opinions->details_bn=$request->details_bn;
        $opinions->details_en=$request->details_en;
        $opinions->slug_bangla=$slug_bn;
        $opinions->slug_english=$slug_en;
        $opinions->writer_id=$request->writer_name;
        $opinions->image=$imageName;
        $opinions->published_date=$currentDate;
        $opinions->status=$request->status;   
        
        $opinions->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/opinions')->with($notification);
    }

    public function show($id)
    {
 
    }
    public function edit($id)
    {
        $opinions= Opinion::findorFail($id);
        return view('opinions.edit',compact('opinions'));
    }

    public function update(Request $request, $id)
    {
        $image = $request->file('image');
        $slug_bn = Str::of($request->title_bn)->slug('-');
        $slug_en = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {

            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug_bn.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        
        
        
        $opinions=Opinion::findOrFail($id);
        $opinions->title_en=$request->title_en;
        $opinions->title_bn=$request->title_bn;
        $opinions->details_bn=$request->details_bn;
        $opinions->details_en=$request->details_en;
        $opinions->slug_bangla=$slug_bn;
        $opinions->slug_english=$slug_en;
        $opinions->writer_id=$request->writer_name;
        $opinions->image=$imageName;
        $opinions->published_date=$currentDate;
        $opinions->status=$request->status;   
        
        $opinions->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/opinions')->with($notification);
    }
    public function destroy($id)
    {
        $opinions=Opinion::findOrFail($id);
        $opinions->delete();
     
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('opinions.index')->with($notification);
    }
   
}
