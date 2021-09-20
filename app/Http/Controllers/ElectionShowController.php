<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Election;
use DB;
use App\User;

class ElectionShowController extends Controller
{
    public function show($slug_bangla)
    {
        $election = Election::where('slug_bangla',$slug_bangla)->first();
        $writer=User::where('id',$election->writer_id)->first();
         $count_view=DB::table('elections')->where('id', $election->id)->increment('view');
         return view('frontend_view.election_details',compact('election','count_view','writer'));
    }
}
