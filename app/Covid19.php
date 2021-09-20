<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Covid19 extends Model
{
    protected $table = 'covid19s';
 
    protected $fillable = [
        'cases_bn','cases_en','death_bn','death_en','cure_bn','cure_en'
    ];
   
}
