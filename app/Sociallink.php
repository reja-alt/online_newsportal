<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sociallink extends Model
{
    protected $table = 'sociallinks';
 
    protected $fillable = [
        'facebook','twitter', 'linkedin' ,'pinterest','instagram'
    ]; 
}


