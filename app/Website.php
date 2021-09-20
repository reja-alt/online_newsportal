<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Website extends Model
{
     protected $table = 'websites';
 
    protected $fillable = [
        'website_name_bn','website_name_en','website_link_bn','website_link_bn'
    ];
}
