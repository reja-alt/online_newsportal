<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Advertisement extends Model
{
    protected $table = 'advertisements';
 
    protected $fillable = [
        'ads_type', 'ads_code' , 'ads_image', 'ads_link','ads_status'
    ];
 
}
