<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lifestyle extends Model
{
    protected $table = 'lifestyles';
 
    protected $fillable = [
        'title_bn','title_en', 'details_bn' , 'details_en', 'writer_id' ,'image','published_date','status'
    ];
    public function users(){
        return $this->belongsTo('App\User','writer_id');
    }
}
