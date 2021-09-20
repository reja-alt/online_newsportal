<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SocialPage extends Model
{
    protected $table = 'social_pages';
 
    protected $fillable = [
        'facebook_page','facebook_status', 'youtube_page' ,'youtube_status'
    ];
}