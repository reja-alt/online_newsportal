<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\ImageGallery;
use Str;
use Carbon\Carbon;
use Image;
use Response;


class ImageGalleryController extends Controller
{
    
    public function index()
    {
        $datas=ImageGallery::all();
    	return view('galleries.index',compact('datas'));
    }
    public function create()
    {
    	return view('galleries.create');
    }
    public function store(Request $request)
    {
    	$this->validate($request, [
            'title' => 'required',
            'image' => 'required|mimes:png,jpeg,gif',
            'description' => 'required',
        ]);
        $image = $request->file('image');
        $slug = Str::of($request->title);
        if(isset($image))
        {

            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/gallery'))
            {
                mkdir('uploads/gallery',0777,true);
            }
            Image::make($image)->resize(900, 500)->save('public/uploads/gallery/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $images=new ImageGallery();
        $images->title=$request->title;
        $images->image=$imageName;
        $images->description=$request->description;
 
        $images->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
           
        return redirect('/image-gallery')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
    	$images =ImageGallery::findOrFail($id);
    	return view('galleries.edit',compact('images'));
    }
    public function update(Request $request,$id)
    {
    	$this->validate($request, [
            'title' => 'required',
            'image' => 'required|mimes:png,jpeg,gif',
            'description' => 'required',
        ]);
        $image = $request->file('image');
        $slug = Str::of($request->title);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            if (!file_exists('uploads/gallery'))
            {
                mkdir('uploads/gallery',0777,true);
            }
            Image::make($image)->resize(900, 500)->save('public/uploads/gallery/'.$imageName);

        } else {
            $imageName = "default.png";
        }
        $images=ImageGallery::findOrFail($id);
        $images->title=$request->title;
        $images->image=$imageName;
        $images->description=$request->description;
 
        $images->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
           
        return redirect('/image-gallery')->with($notification);
    }
    public function destroy($id)
    {
        $jobnews= ImageGallery::findOrFail($id);
        $jobnews->delete();
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('image-gallery.index')->with($notification);	
    }
}
