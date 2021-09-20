<?php

namespace App;
use App\Subcategory;
use App\User;
use App\Post;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';
 
    protected $fillable = [
        'name_bn', 'name_en' , 'slug_bn', 'slug_en','show_on_header'
    ];
 
    public function subcategories(){
        return $this->hasMany('App\Subcategory','category_id');
    }
    
    public function posts(){
        return $this->hasMany('App\Post');
    }

    public function first_section_posts(){
        return $this->hasMany('App\Post', 'cat_id')->limit(5);
    }
  

}
