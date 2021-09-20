<?php

namespace App\Providers;

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use DB;
use App\Category;
use View;
class AppServiceProvider extends ServiceProvider
{
    
    public function register()
    {
        //
    }

    public function boot()
    {

        $categories = Category::with(['subcategories'])->orderBy('id','ASC')->limit(12)->get();
        View::share('categories',$categories);
        Schema::defaultStringLength(191);
        
    }
}
