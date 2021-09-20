<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Division;
use App\Post;
use App\Subdistrict;

class District extends Model
{
    protected $table = 'districts';
 
    protected $fillable = [
        'div_id','name_bn', 'name_en'
    ];
    public function posts(){
        return $this->hasMany('App\Post');
    }
    public function divisions(){
        return $this->belongsTo('App\Division','div_id');
    }
    public function subdistricts(){
        return $this->hasMany('App\Subdistrict');
    }
}
