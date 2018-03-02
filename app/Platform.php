<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Platform extends Model
{
    function news() {
    	return $this->hasMany('App\News');
    }

    function reviews() {
    	return $this->hasMany('App\Review');
    }
}
