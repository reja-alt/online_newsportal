<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Hash;
use App\Category;
use App\User;
use Image;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Auth;

class WriterController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {

    
        $users = DB::table('users')
        ->leftJoin('categories', 'categories.id', '=', 'users.cat_id')
        ->select('users.*','categories.name_bn')->where('status',1)
        ->get();
        return view('writers.index',compact('users'));
    }
    public function create()
    {
        $categories=Category::all();
        
        return view('writers.create',compact('categories'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'bangla_name' => 'required',
            'english_name' => 'required',
            'email' => 'required',
            'category_name' => 'required',
        ]);
        $image = $request->file('image');
        $slug = Str::of($request->bangla_name);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if (!file_exists('uploads/writer'))
            {
                mkdir('uploads/writer',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/writer/'.$imageName);

        } else {
            $imageName = "default.png";
        } 
        
         $user=new User();
        
         $user->bangla_name=$request->bangla_name;
         $user->english_name=$request->english_name;
         $user->email=$request->email;
         $user->password=Hash::make($request->password); 
         $user->image=$imageName;
         $user->cat_id=$request->category_name;
         $user->status=$request->status;
         $user->role_post=1;

         $user->save();
         return redirect('/writer')->with('success', 'Contact saved!');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $categories=Category::all();
        $writers=User::find($id);
        return view('writers.edit',compact('writers','categories'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'bangla_name' => 'required',
            'english_name' => 'required',
            'email' => 'required',
            'category_name' => 'required',
        ]);
        $image = $request->file('image');
        $slug = Str::of($request->bangla_name);
        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imageName  = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();
            if (!file_exists('uploads/writer'))
            {
                mkdir('uploads/writer',0777,true);
            }
            Image::make($image)->resize(320, 240)->save('public/uploads/writer/'.$imageName);

        } else {
            $imageName = $request->old_image;
        } 
        
         $user=User::findOrFail($id);
         $user->bangla_name=$request->bangla_name;
         $user->english_name=$request->english_name;
         $user->email=$request->email;
         $user->password=Hash::make($request->password); 
         $user->image=$imageName;
         $user->cat_id=$request->category_name;
         $user->status=$request->status;

         $user->save();
   
   
           
       return redirect('/writer')->with('success', 'Contact saved!');
    }
    public function destroy($id)
    {
        $user=User::findOrFail($id);
        $user->delete();
     
        return redirect()->route('writer.index');
    }
    
    public function UserWriterShow()
    {
        $users = DB::table('users')
        ->leftJoin('categories', 'categories.id', '=', 'users.cat_id')
        ->select('users.*','categories.name_bn')->where('users.id',Auth::user()->id)
        ->get();

       
        return view('writers.writer.index',compact('users'));
    }
    
}
