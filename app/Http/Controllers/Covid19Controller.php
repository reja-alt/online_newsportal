<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Covid19;

class Covid19Controller extends Controller
{
    public function index()
    {
        $covid19s=Covid19::all();
        return view('covid19s.index',compact('covid19s'));
    }

    public function create()
    {
        return view('covid19s.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'case_bn' => 'required',
            'case_en' => 'required',
            'death_bn' => 'required',
            'death_en' => 'required',
            'cure_bn' => 'required',
            'cure_en' => 'required',
        ]);
        $covid19s= new Covid19();
        $covid19s->cases_bn= $request->case_bn;
        $covid19s->cases_en= $request->case_en;
        $covid19s->death_bn= $request->death_bn;
        $covid19s->death_en= $request->death_en;
        $covid19s->cure_bn= $request->cure_bn;
        $covid19s->cure_en= $request->cure_en;
        $covid19s->status= $request->status;
        $covid19s->save();
        
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
            return redirect('/covid19')->with( $notification);
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $covid19=Covid19::findOrFail($id);
        return view('covid19s.edit',compact('covid19'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'case_bn' => 'required',
            'case_en' => 'required',
            'death_bn' => 'required',
            'death_en' => 'required',
            'cure_bn' => 'required',
            'cure_en' => 'required',
        ]);
    
        $covid19=Covid19::findOrFail($id);
        $covid19->cases_bn= $request->case_bn;
        $covid19->cases_en= $request->case_en;
        $covid19->death_bn= $request->death_bn;
        $covid19->death_en= $request->death_en;
        $covid19->cure_bn= $request->cure_bn;
        $covid19->cure_en= $request->cure_en;
        $covid19->status= $request->status;
        $covid19->save();
        
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
            return redirect('/covid19')->with( $notification);
    }
    
    public function destroy($id)
    {
        $covid19=Covid19::findOrFail($id);
        $covid19->delete();
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
        return redirect()->route('covid19.index')->with($notification);
    }
}
