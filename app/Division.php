<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\District;
use APP\Subdistrict;
use App\Post;

class Division extends Model
{
    protected $table = 'divisions';
 
    protected $fillable = [
        'name_bn', 'name_en'
    ];
    public function districts(){
        return $this->hasMany('App\District');
    }

    public function subdistrict(){
        return $this->belongsTo('App\Subdistrict');
    }
    public function posts(){
        return $this->hasMany('App\Post');
    }
}
