<?php

namespace App;
use App\Category;
use App\subcategory;
use App\Post;

use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    protected $table = 'subcategories';
 
    protected $fillable = [
        'category_id','name_bn', 'name_en' ,'show_on_header'
    ];
    public function category(){
        return $this->belongsTo('App\Category');
    }
    public function posts(){
        return $this->hasMany('App\Post','sub_cat_id');
    }
}
