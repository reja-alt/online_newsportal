<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OurSay extends Model
{
    protected $table = 'our_says';
    protected $fillable = [
        'details_bn', 'details_en'
    ];
}
