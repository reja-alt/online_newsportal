<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Election extends Model
{
     protected $table = 'elections';
 
        protected $fillable = [
            'image', 'title' , 'description', 'title_slug', 'writer_id'
        ];
        public function users(){
            return $this->belongsTo('App\User','writer_id');
        }
}
