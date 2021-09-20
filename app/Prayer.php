<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Prayer extends Model
{
    protected $table = 'prayers';
    protected $fillable = [
        'prayer_name_bn', 'prayer_name_en','begin'
    ];
}
