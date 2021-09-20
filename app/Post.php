<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Category;
use App\Subcategory;
use App\User;
use Illuminate\Notifications\Notifiable;


class Post extends Model
{
    use Notifiable;
    protected $table = 'posts';
 
    protected $fillable = [
        'cat_id','sub_cat_id','user_id', 'division_id', 'district_id', 'subdistrict_id','title_en','title_bn','image','details_en', 'details_bn','published_date','tags_en','tags_bn','slug_title','headline_en','headline_bn','big_thumbnail','status','thumbnail_select','headline','month','year'
    ];
    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function subcategory(){
        return $this->belongsTo('App\Subcategory');
    }
    public function user(){
        return $this->hasMany('App\User','user_id');
    }

}
