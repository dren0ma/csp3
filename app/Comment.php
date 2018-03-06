<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    function user() {
		return $this->belongsTo('App\User');
	}

	function news() {
		return $this->belongsTo('App\News');
	}

	function review() {
		return $this->belongsTo('App\Review');
	}
}
