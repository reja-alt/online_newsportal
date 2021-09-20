<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Term extends Model
{
    protected $table = 'terms';
    protected $fillable = [
        'details_bn', 'details_en'
    ];
}


