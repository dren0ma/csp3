<?php

namespace App\Http\Controllers;
use App\News;
use App\Review;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function sortNews($sort) {
    	$sort_news = $news->platforms()->wherePivot('type', $sort)->get();
   		
   		return response()->json(array('user' => $name, 'comment' => $comment->comment, 'comment_id' =>$commentId, 'time' => $time), 200); 
	
    }






    // $searchresults = Product::where('name_en', 'LIKE', '%'.$search.'%')->get();
}
