<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notice;
use Illuminate\Support\Str;
use Image;
use DB;
class NoticeController extends Controller
{
    public function index()
    {
        //
    }
    public function create()
    {
        return view('pages.notice');
    }
    public function store(Request $request)
    {
        $image = $request->file('image');
        $slug_bangla = Str::of($request->title_bn)->slug('-');
        $slug_english = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {
//           make unipue name for image
            
            $imageName  = $slug_bangla.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/post'))
            {
                mkdir('uploads/post',0777,true);
            }
            Image::make($image)->resize(900, 500)->save('public/uploads/post/'.$imageName);

        } else {
            $imageName = "default.png";
           
        }
        $this->validate($request, [
            'title_bn' => 'required',
            'title_en' => 'required',
            'details_bn' => 'required',
            'details_en' => 'required',
        ]);
        $notices= new Notice();
        $notices->title_bn= $request->title_bn;
        $notices->title_en= $request->title_en;
        $notices->details_bn= $request->details_bn;
        $notices->details_en= $request->details_bn;
        // $notices->image= $imageName;
        $notices->slug_bangla= $slug_bangla;
        $notices->slug_english= $slug_english;
        $notices->status= $request->status;
        $notices->save();
        
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
            return view('pages.notice')->with($notification);
    }
  
    public function give_ads()
    {
        $ads=DB::table('give_ads')->first();
        return view('pages.give_ads',compact('ads'));
    }

    public function AdsUpdate(Request $request)
    {
        $aata=array();
        $data['details_en']=$request->details_en;
        $data['details_bn']=$request->details_bn;
        DB::table('give_ads')->update($data);
         $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
         return redirect()->back()->with($notification);
    }

}
