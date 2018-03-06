<?php

namespace App\Http\Controllers;
use App\News;
use App\Review;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function sortNews($sort) {
    	$sort_news = $news->platforms()->wherePivot('type', $sort)->get();
   		
   		return view ('news/sort/'.$sort, compact('sort_news');
    }

    public function showSortedNews {
        
    }




    // $searchresults = Product::where('name_en', 'LIKE', '%'.$search.'%')->get();
}
