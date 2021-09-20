<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Category;
use DB;
use Response;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
   
    public function index()
    {
        $categories=Category::all();
        return view('category.index',compact('categories'));
        
    }
    public function create()
    {
        return view('category.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
            
        ]);
        $categories= new Category();
        $slug = Str::of($request->name_bn)->slug('-');
        $slugen = Str::of($request->name_en)->slug('-');
        $categories->name_bn= $request->name_bn;
        $categories->name_en= $request->name_en;
        $categories->slug_bn= $slug;
        $categories->slug_en= $slugen;
        $categories->category_on_header= $request->category_on_header;
        $categories->save();

        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
            return redirect('/category')->with( $notification);
    }
    public function show($id)
    {
        
    }
    public function edit($id)
    { 
        $category=Category::findOrfail($id);
        return view('category.edit',compact('category'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
            
        ]);
        $categories = Category::findOrFail($id); 
        $slug = Str::of($request->name_bn)->slug('-');
        $slugen = Str::of($request->name_en)->slug('-');
        $categories->name_bn= $request->name_bn;
        $categories->name_en= $request->name_en;
        $categories->slug_bn= $slug;
        $categories->slug_en= $slugen;
        $categories->category_on_header= $request->category_on_header;
        $categories->save();
        
        $notification=array(
            'message'=>'Successfully Updated',
            'alert-type'=>'info'
        );
        return redirect('/category')->with($notification);
    }
    public function destroy($id)
    {
        DB::table('categories')->where('id',$id)->delete();
        $notification=array(
            'message'=>'Successfully Deleted',
            'alert-type'=>'success'
        );
     
        return redirect()->route('category.index')->with($notification);
    }

   
    
}
