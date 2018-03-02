<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    function user() {
		return $this->belongsTo('App\User');
	}

	function comments() {
        return $this->hasMany('App\Comment');
    }

    function images() {
        return $this->hasMany('App\Image');
    }

    function platforms() {
    	return $this->belongsToMany('App\Platform');
    }
}
