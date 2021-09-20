<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Division;
use App\District;


class SubDistrict extends Model
{
    protected $table = 'subdistricts';
 
    protected $fillable = [
        'div_id','district_id','subdis_name_bn', 'subdis_name_en'
    ];
    public function division(){
        return $this->belongsTo('App\Division','div_id');
    }
    public function district(){
        return $this->belongsTo('App\District');
    }
}
