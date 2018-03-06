<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    function news() {
		return $this->belongsTo('App\News');
	}

	function review() {
		return $this->belongsTo('App\Review');
	}
}
