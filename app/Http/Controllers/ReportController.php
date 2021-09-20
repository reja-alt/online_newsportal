<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Post;
use Carbon\Carbon;
class ReportController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function daily()
    {
        $posts=DB::table('posts')
                ->Join('categories', 'posts.cat_id', '=', 'categories.id')
                ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
                ->Join('users', 'posts.user_id', '=', 'users.id')
                ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
                ->where('published_date',date('Y-m-d'))
                ->get();
        return view('report.daily_report',compact('posts'));
    }

    public function Monthly()
    {
        return view('report.month.index');
    }

    public function ReportMonth(Request $request)
    {
         $month=$request->month;
         $posts=DB::table('posts')
                ->Join('categories', 'posts.cat_id', '=', 'categories.id')
                ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
                ->Join('users', 'posts.user_id', '=', 'users.id')
                ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
                ->where('month',$month)
                ->get();
         return view('report.month.report',compact('posts'));
    }

    public function Yearly()
    {
         return view('report.year.index');
    }

    public function ReportYear(Request $request)
    {
        $year=$request->year;
         $posts=DB::table('posts')
                ->Join('categories', 'posts.cat_id', '=', 'categories.id')
                ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
                ->Join('users', 'posts.user_id', '=', 'users.id')
                ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
                ->where('year',$year)
                ->get();
         return view('report.year.report',compact('posts'));
    }

    public function individual()
    {
         return view('report.individual.index');
    }

    public function ReportIndividual(Request $request)
    {
        $user_id=$request->user_id;
        $posts=DB::table('posts')
                ->Join('categories', 'posts.cat_id', '=', 'categories.id')
                ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
                ->Join('users', 'posts.user_id', '=', 'users.id')
                ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
                ->where('user_id',$user_id)
                ->get();
         return view('report.individual.report',compact('posts'));
    }

    public function datewise()
    {
         return view('report.datewise.index');
    }

    public function ReportDatewise(Request $request)
    {
        $date=$request->date;
        $posts=DB::table('posts')
                ->Join('categories', 'posts.cat_id', '=', 'categories.id')
                ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
                ->Join('users', 'posts.user_id', '=', 'users.id')
                ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
                ->where('published_date',$date)
                ->get();
         return view('report.datewise.report',compact('posts'));
    }

}
