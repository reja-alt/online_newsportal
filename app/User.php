<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Post;
use App\Election;
use App\Opinion;
use App\Abroad;
use App\Bulatin;
use App\Lifestyle;
use App\Category;
class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'bangla_name', 'english_name','email', 'password', 'image','cat_id','status','role_post'
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function post(){
        return $this->hasMany('App\Post');
    }
    public function opinion(){
        return $this->hasMany('App\Opinion');
    }
    public function abroad(){
        return $this->hasMany('App\Abroad');
    }
    public function bulatin(){
        return $this->hasMany('App\Bulatin');
    }
    public function election(){
        return $this->hasMany('App\Election');
    }
    public function lifestyle(){
        return $this->hasMany('App\Lifestyle');
    }
  
}
