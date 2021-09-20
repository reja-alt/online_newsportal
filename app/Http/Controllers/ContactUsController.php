<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;

class ContactUsController extends Controller
{
    public function index()
    {
        //
    }

     public function create()
    {
       return view('pages.contact');
    }
    
    public function store(Request $request)
    {
        $this->validate($request, [
            'details_bn' => 'required',
            'details_en' => 'required',
            
        ]);
        $contacts= new Contact();
        $contacts->details_bn= $request->details_bn;
        $contacts->details_en= $request->details_en;
        $contacts->save();
        
        $notification=array(
            'message' => 'Successfully Done',
            'alert-type' => 'success'
        );
            return view('pages.contact')->with( $notification);
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
}
