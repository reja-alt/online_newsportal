<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use Carbon\Carbon;
use Image;
use Illuminate\Support\Str;
use DB;
class SettingController extends Controller
{
   
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create()
    {
        return view('setting');
    }

    public function store(Request $request)
    {
        $image = $request->file('logo');
       
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $currentDate.'-'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }

            Image::make($image)->resize(170, 50)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $data= new Setting();
        $data->autherity_name_bn= $request->autherity_name_bn;
        $data->autherity_name_en= $request->autherity_name_en;
        $data->title_bn= $request->title_bn;
        $data->title_bn= $request->title_bn;
        $data->title_en= $request->title_en;
        $data->facebook_page= $request->facebook_page;
        $data->youtube_channel= $request->youtube_channel;
        $data->address= $request->address;
        $data->phone_number= $request->phone_number;
        $data->email_address= $request->email_address;
        $data->logo= $imageName;
        $data->save();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return view('/setting')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        //
    }
    public function update(Request $request, $id)
    {
        //
    }
    public function destroy($id)
    {
        //
    }


    public function OffOn()
    {
        return view('others.off_on');
    }

    public function OnElection()
    {
        DB::table('offon')->where('id',1)->update(['election'=>1]);
        return redirect()->back();
    }

    public function OffElection()
    {
         DB::table('offon')->where('id',1)->update(['election'=>0]);
        return redirect()->back();
    }

     public function OnLanguage()
    {
        DB::table('offon')->where('id',1)->update(['language'=>1]);
        return redirect()->back();
    }

    public function OffLanguage()
    {
         DB::table('offon')->where('id',1)->update(['language'=>0]);
        return redirect()->back();
    }

    public function Onheadline()
    {
        DB::table('offon')->where('id',1)->update(['headline'=>1]);
        return redirect()->back();
    }

    public function Offheadline()
    {
         DB::table('offon')->where('id',1)->update(['headline'=>0]);
        return redirect()->back();
    }

    public function Onheaderads()
    {
        DB::table('offon')->where('id',1)->update(['header_ads'=>1]);
        return redirect()->back();
    }

    public function Offheaderads()
    {
         DB::table('offon')->where('id',1)->update(['header_ads'=>0]);
        return redirect()->back();
    }

    public function OnFacebookPage()
    {
        DB::table('offon')->where('id',1)->update(['facebook_page'=>1]);
        return redirect()->back();
    }

    public function OffFacebookPage()
    {
         DB::table('offon')->where('id',1)->update(['facebook_page'=>0]);
        return redirect()->back();
    }

    public function Oncovid19()
    {
        DB::table('offon')->where('id',1)->update(['covid19'=>1]);
        return redirect()->back();
    }

    public function Offcovid19()
    {
         DB::table('offon')->where('id',1)->update(['covid19'=>0]);
        return redirect()->back();
    }

     public function Onnamaz()
    {
        DB::table('offon')->where('id',1)->update(['namaz'=>1]);
        return redirect()->back();
    }

    public function Offnamaz()
    {
         DB::table('offon')->where('id',1)->update(['namaz'=>0]);
        return redirect()->back();
    }

    public function Onnotice()
    {
        DB::table('offon')->where('id',1)->update(['notice'=>1]);
        return redirect()->back();
    }

    public function Offnotice()
    {
         DB::table('offon')->where('id',1)->update(['notice'=>0]);
        return redirect()->back();
    } 
    public function Onphotogallery()
    {
        DB::table('offon')->where('id',1)->update(['photogallery'=>1]);
        return redirect()->back();
    }

    public function Offphotogallery()
    {
         DB::table('offon')->where('id',1)->update(['photogallery'=>0]);
        return redirect()->back();
    }

    public function OnBiggopti()
    {
        DB::table('offon')->where('id',1)->update(['biggopti'=>1]);
        return redirect()->back();
    }

    public function OffBiggopti()
    {
         DB::table('offon')->where('id',1)->update(['biggopti'=>0]);
        return redirect()->back();
    }

     public function OnJob()
    {
        DB::table('offon')->where('id',1)->update(['job'=>1]);
        return redirect()->back();
    }

    public function OffJob()
    {
         DB::table('offon')->where('id',1)->update(['job'=>0]);
        return redirect()->back();
    } 

    public function OnnonProfit()
    {
        DB::table('offon')->where('id',1)->update(['non_profit'=>1]);
        return redirect()->back();
    }

    public function OffnonProfit()
    {
         DB::table('offon')->where('id',1)->update(['non_profit'=>0]);
        return redirect()->back();
    }



}
