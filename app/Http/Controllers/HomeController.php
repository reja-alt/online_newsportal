<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Category;
use Carbon\Carbon;
use Image;
use Illuminate\Support\Str;
use DB;
class HomeController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
         return view('home');  
    }

    public function adminpaneledit()
    {
    	return view('auth.panel_edit');
    }

    public function AdminLogoUpdate(Request $request)
    {
    	 $image = $request->file('admin_logo');
       
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $currentDate.'.'.$image->getClientOriginalExtension();
            if (!file_exists('uploads/setting'))
            {
                mkdir('uploads/setting',0777,true);
            }
            Image::make($image)->resize(190, 50)->save('public/uploads/setting/'.$imageName);

            $data= array();
            $data['admin_logo']=$imageName;
            DB::table('settings')->where('id',1)->update($data);
            $notification=array(
                'message' => 'Successfully Done',
                'alert-type' => 'success'
            );
            return redirect()->route('home')->with($notification);
        } 

       
        
    }
}