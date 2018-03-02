<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Platform extends Model
{
    function news() {
    	return $this->belongsToMany('App\News');
    }

    function reviews() {
    	return $this->belongsToMany('App\Review');
    }
}
