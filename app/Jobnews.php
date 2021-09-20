<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jobnews extends Model
{
    protected $table = 'job_news';
 
    protected $fillable = [
        'title_bn','title_en', 'details_bn' , 'details_en', 'writer_id' ,'image','published_date','status'
    ];
}
