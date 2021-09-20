<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\NonProfit;
use Image;
use Str;
use Carbon\Carbon;

class NonProfitController extends Controller
{
    public function index()
    {
        $nonprofits=NonProfit::all();
        return view('nonprofits.index',compact('nonprofits'));
    }
    public function create()
    {
        return view('nonprofits.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'title_bn' => 'required',
            'title_en' => 'required',
            'description_bn' => 'required',
            'description_bn' => 'required',
            
         ]);
        $image = $request->file('image');
        $slug = Str::of($request->title_en);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        
        $nonprofits=new NonProfit();
        $nonprofits->title_en=$request->title_en;
        $nonprofits->title_bn=$request->title_bn;
        $nonprofits->description_bn=$request->description_bn;
        $nonprofits->description_en=$request->description_en;
        $nonprofits->image=$imageName;
        $nonprofits->amount=$request->amount;
        $nonprofits->end_date=$currentDate;
      
        $nonprofits->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/nonprofit')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $nonprofit=NonProfit::findOrFail($id);
        return view('nonprofits.edit',compact('nonprofit'));
    }
    public function update(Request $request, $id)
    {
        $image = $request->file('image');
        $slug = Str::of($request->title_en);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName =$request->old_image;
        }
        
        $nonprofits=NonProfit::findOrFail($id);
        $nonprofits->title_en=$request->title_en;
        $nonprofits->title_bn=$request->title_bn;
        $nonprofits->description_bn=$request->description_bn;
        $nonprofits->description_en=$request->description_en;
        $nonprofits->image=$imageName;
        $nonprofits->amount=$request->amount;
      
        $nonprofits->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect('/nonprofit')->with($notification);
    }
    public function destroy($id)
    {
        $nonprofit=NonProfit::findOrFail($id);
        $nonprofit->delete();
        $notification=array(
            'message'=>'Successfully Deleted',
            'alert-type'=>'success'
        );
     
        return redirect()->route('nonprofit.index')->with($notification);
    }
}
