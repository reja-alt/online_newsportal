<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Image;
use Carbon\Carbon;
use DB;
use App\Advertisement;
use Response;


class AdvertiseController extends Controller
{
   

    public function index()
    {
        $advertises=DB::table('advertisements')->orderBy('id')->get();
        return view('advertises.index',compact('advertises'));
    }

    
    public function create()
    {
        return view('advertises.create');
    }

   
    public function store(Request $request)
    {
        $image = $request->file('ads_image');
       
        if(isset($image))
        {

            $currentDate = Carbon::now()->toDateString();
            $imageName  = uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/ads'))
            {
                mkdir('uploads/ads',0777,true);
            }
            Image::make($image)->resize(900, 100)->save('public/uploads/ads/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $advertises=new Advertisement();
        $advertises->ads_type=$request->ads_type;
        $advertises->ads_code=$request->ads_code;
        $advertises->ads_image= $imageName;
        $advertises->ads_link=$request->ads_link;
        $advertises->ads_status=$request->status;
        $advertises->save();

        $notification=[
            'message'=>'Created Successfully',
            'alert-type'=>'success',
        ];

        return redirect('/advertise')->with($notification);
    }


    public function show($id)
    {
        //
    }

    
    public function edit($id)
    {
        $advertise=DB::table('advertisements')->where('id',$id)->first();
        return view('advertises.edit',compact('advertise'));
    }

   
    public function update(Request $request, $id)
    {
        $image = $request->file('ads_image');
       
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/ads'))
            {
                mkdir('uploads/ads',0777,true);
            }
            Image::make($image)->resize(900, 100)->save('public/uploads/ads/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $advertise=Advertisement::findOrFail($id);
        $advertise->ads_type=$request->ads_type;
        $advertise->ads_code=$request->ads_code;
        $advertise->ads_image= $imageName;
        $advertise->ads_link=$request->ads_link;
        $advertise->ads_status=$request->status;
        $advertise->save();

        $notification=[
            'message'=>'Created Successfully',
            'alert-type'=>'success',
        ];

        return redirect('/advertise')->with($notification);
    }


    public function destroy($id)
    {
        DB::table('advertisements')->where('id',$id)->delete();
        $notification=array(
            'message'=>'Successfully Deleted',
            'alert-type'=>'success'
        );
     
        return redirect()->route('advertise.index')->with($notification);
    }
    
}
