<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BdCovid19 extends Model
{
    protected $table = 'bd_covid19s';
 
    protected $fillable = [
        'cases_bn','cases_en','death_bn','death_en','cure_bn','cure_en'
    ];
}
