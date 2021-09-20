<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Prayer;
use Carbon\Carbon;

class PrayerController extends Controller
{
    public function index()
    {
        $prayers=Prayer::all();
        return view('prayers.index',compact('prayers'));
    }
    public function create()
    {
        return view('prayers.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'prayer_name_bn' => 'required',
            'prayer_name_en' => 'required',
            
        ]);
    
        $prayers= new Prayer();
        $prayers->prayer_name_bn= $request->prayer_name_bn;
        $prayers->prayer_name_en= $request->prayer_name_en;
        $prayers->status= $request->status;
        $prayers->adhan= $request->adhan;
        $prayers->iqamah= $request->iqamah;
        $prayers->save();
    
        $notification=array(
        'message' => 'Successfully Done',
        'alert-type' => 'success'
    );
        return redirect('/prayer')->with( $notification);
    }

    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        $prayer=Prayer::findOrFail($id);
        return view('prayers.edit',compact('prayer'));

    }
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'prayer_name_bn' => 'required',
            'prayer_name_en' => 'required',
            
        ]);
    
        $prayer=Prayer::findOrFail($id);
        $prayer->prayer_name_bn= $request->prayer_name_bn;
        $prayer->prayer_name_en= $request->prayer_name_en;
        $prayer->status= $request->status;
        $prayer->adhan= $request->adhan;
        $prayer->iqamah= $request->iqamah;
        $prayer->save();
    
        $notification=array(
        'message' => 'Successfully Done',
        'alert-type' => 'success'
    );
        return redirect('/prayer')->with( $notification);
    }
    public function destroy($id)
    {
        $user=Post::findOrFail($id);
        $user->delete();
        $notification=array(
            'message'=>'Successfully Deleted',
            'alert-type'=>'success'
        );
     
        return redirect()->route('post.index')->with($notification);
    }
}
