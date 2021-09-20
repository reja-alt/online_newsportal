<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NonProfit extends Model
{
    protected $table = 'non_profits';
 
    protected $fillable = [
        'title_bn','title_en', 'description_bn' ,'description_en','image','amount','end_date'
    ];
}
