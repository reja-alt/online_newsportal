<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Str;
use Image;
use Carbon\Carbon;
use App\User;
use DB;
use App\Election;

class ElectionController extends Controller
{ 
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $elections=Election::with('users')->get();
        return view('elections.index',compact('elections'));
    }
    public function create()
    {
      return view('elections.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'title_bn' => 'required|unique:posts|max:255',
            'title_en' => 'required|unique:posts|max:255',
            'description_bn' => 'required',
            'description_en' => 'required'
        ]);
        $image = $request->file('image');
        $slug_bangla = Str::of($request->title_bn)->slug('-');
        $slug_english = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug_en.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if (!file_exists('uploads/election'))
            {
                mkdir('uploads/election',0777,true);
            };
            Image::make($image)->resize(400, 350)->save('public/uploads/election/'.$imageName);

        } else {
           
        } 
        
        $elections=new Election();
        $elections->image=$imageName;
        $elections->title_en=$request->title_en;
        $elections->title_bn=$request->title_bn;
        $elections->description_bn=$request->description_bn; 
        $elections->description_en=$request->description_en; 
        $elections->slug_bangla=$slug_bangla;
        $elections->slug_english=$slug_english;
        $elections->writer_id=$request->writer_name;
        $elections->save();
        
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect('/election')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $election=Election::findOrFail($id);
        return view('elections.edit',compact('election'));
    }
    public function update(Request $request, $id)
    {
       
        $image = $request->file('image');
        $slug_bangla = Str::of($request->title_bn)->slug('-');
        $slug_english = Str::of($request->title_en)->slug('-');
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug_bangla.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if (!file_exists('uploads/election'))
            {
                mkdir('uploads/election',0777,true);
            };
            Image::make($image)->resize(400, 350)->save('public/uploads/election/'.$imageName);

        } else {
            $imageName = $request->old_image;
        } 
        
        $elections=Election::findOrFail($id);
        $elections->image=$imageName;
        $elections->title_en=$request->title_en;
        $elections->title_bn=$request->title_bn;
        $elections->description_bn=$request->description_bn; 
        $elections->description_en=$request->description_en; 
        $elections->slug_bangla=$slug_bangla;
        $elections->slug_english=$slug_english;
        $elections->save();
        
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect('/election')->with($notification);
    }
    public function destroy($id)
    {
        $election=Election::findOrFail($id);
        $election->delete();
        $notification=[
            'message'=>'Successfully Updated',
            'alert'=>'success'
        ];
        return redirect()->route('election.index')->with($notification);
    }
}
