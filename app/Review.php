<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
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

    function videos() {
        return $this->hasMany('App\Video');
    }

    function platforms() {
        return $this->belongsToMany('App\Platform')->withPivot('platform_id');
    }
}
