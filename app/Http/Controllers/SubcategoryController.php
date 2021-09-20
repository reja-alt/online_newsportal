<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use App\Subcategory;
use App\Category;

class SubcategoryController extends Controller
{
    public function index()
    {
        $subcategories=Subcategory::all();
        return view('subcategories.index',compact('subcategories'));
    }
    public function create()
    {
       $categories=Category::all();
       return view('subcategories.create',compact('categories'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
        ]);
        $data= new Subcategory();
        $slug = Str::of($request->name_bn)->slug('-');
        $slugen = Str::of($request->name_en)->slug('-');
        $data->category_id= $request->cat_name;
        $data->name_bn= $request->name_bn;
        $data->name_en= $request->name_en;
        $data->slug_bn= $slug;
        $data->slug_en= $slugen;
        $data->show_on_header= $request->show_on_header;
        $data->save();
        $notification=array(
            'message'=>'Successfully Created',
            'alert-type'=>'success'
    );
        return redirect('/subcategory')->with('success', 'Contact saved!')->with($notification);
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $subcategory=Subcategory::findOrfail($id);
        $categories= Category::all();
        return view('subcategories.edit',compact('subcategory','categories'));
    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name_bn' => 'required',
            'name_en' => 'required',
        ]);
        $data= Subcategory::findOrfail($id);
        $slug = Str::of($request->name_bn)->slug('-');
        $slugen = Str::of($request->name_en)->slug('-');
        $data->category_id= $request->cat_name;
        $data->name_bn= $request->name_bn;
        $data->name_en= $request->name_en;
        $data->slug_bn= $slug;
        $data->slug_en= $slugen;
        $data->show_on_header= $request->show_on_header;
        $data->update();

        $notification=array(
            'message'=>'Successfully Updated',
            'alert-type'=>'success'
    );
        return redirect('/subcategory')->with($notification);
    }
    public function destroy($id)
    {
        $user=Subcategory::findOrFail($id);
        $user->delete();
     
        return redirect()->route('subcategory.index');
    
    }
}
