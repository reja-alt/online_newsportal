<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    protected $table = 'notices';
    protected $fillable = [
        'title_bn','title_en','notice_bn', 'notice_en', 'status'
    ];
  
}
