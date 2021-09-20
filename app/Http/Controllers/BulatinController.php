<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Str;
use Image;
use Carbon\Carbon;
use DB;
use App\Bulatin;

class BulatinController extends Controller
{
   
    public function index()
    {
        $bulatins=Bulatin::with('user')->get();
        return view('bulatins.index',compact('bulatins'));
    }

    public function create()
    {
       return view('bulatins.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
        ]);
        $image = $request->file('image');
        $slug = Str::of($request->title);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
   
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);
        }  
            else 
            {
            $imageName = "default.png";
            } 
        
        $bulatins=new Bulatin();
        $bulatins->image=$imageName;
        $bulatins->title=$request->title;
        $bulatins->description=$request->description; 
        $bulatins->title_slug=$slug;
        $bulatins->writer_id=$request->writer_name;

        $bulatins->save();
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
         return redirect('/bulatin')->with($notification);
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $bulatin=Bulatin::findOrFail($id);
        return view('bulatins.edit',compact('bulatin'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
        ]);
        $image = $request->file('image');
        $slug = Str::of($request->title);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
       
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        }  else 
            {
                $imageName = "default.png";
            } 
        
        $bulatins=Bulatin::findOrFail($id);
        $bulatins->image=$imageName;
        $bulatins->title=$request->title;
        $bulatins->description=$request->description; 
        $bulatins->title_slug=$slug;
        $bulatins->writer_id=$request->writer_name;
        $bulatins->save();
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
         return redirect('/bulatin')->with($notification);
    }

    public function destroy($id)
    {
        $bulatin=Bulatin::findOrFail($id);
        $bulatin->delete();
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('election.index')->with($notification);
    }
}
