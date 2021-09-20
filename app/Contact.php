<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = 'bulatins';
 
    protected $fillable = [
        'details_bn', 'details_en'
    ];
}
