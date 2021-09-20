<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageShowController extends Controller
{
    public function contact($id)
    {
        return view('frontend_view.pages.contact_page');
    }
}
