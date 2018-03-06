<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Platform extends Model
{
    function news() {
    	return $this->belongsToMany('App\News')->withPivot('news_id');
    }
    function reviews() {
    	return $this->belongsToMany('App\Review')->withPivot('review_id');
    }
}
