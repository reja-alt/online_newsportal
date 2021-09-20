<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $table = 'settings';
 
    protected $fillable = [
        'title','facebook_page','youtube_channel', 'address' ,'phone_number','email_address','logo'
    ];
    
}

