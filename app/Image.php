<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    function news() {
		return $this->belongsTo('App\News');
	}

	function review() {
		return $this->belongsTo('App\Review');
	}
}
