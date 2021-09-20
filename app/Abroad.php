<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Abroad extends Model
{
    protected $table = 'abroads';
 
    protected $fillable = [
        'title_bn','title_en', 'details_bn' , 'details_en', 'writer_id' ,'image','published_date','status'
    ];
    public function user(){
        return $this->belongsTo('App\User','writer_id');
    }
}
