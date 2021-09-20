<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Bulatin extends Model
{
     protected $table = 'bulatins';
 
    protected $fillable = [
        'title' , 'title_slug', 'image', 'description', 'writer_id'
    ];
    public function user(){
        return $this->belongsTo('App\User','writer_id');
    }
}
