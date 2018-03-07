<?php

namespace App\Http\Controllers;
use App\News;
use App\Review;
use App\Platform;
use App\Video;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function sortNews($sort) {
      $platform = Platform::where('type',$sort)->first();
      $news = $platform->news;
      // $sidenews = News::orderBy('created_at', 'desc')->take(3)->get();
      // $sidereviews = Review::orderBy('created_at', 'desc')->take(3)->get();
      // $latest_video = Video::latest()->first();
      // $news = News::with('platforms')->sorted($sort)->get();
    	// $news = News::with('sorted','=',$sort)->get();
     //  dd($news);
     // //  $news = $news->sorted($sort);
    	// $news->orderBy($sort, 'desc')->get();
    	// $snews = $news->platforms()->orderBy($sort, 'desc')->get();

    	// $time = date('M jS, Y', strtotime($news->created_at));
   		
   		// return response()->json(array('title' => $news->title, 'id' => $news->id, 'time' => $time, 'content' => $news->content, 'img' => $news->image), 200);

      // $news = News::whereHas('sorted', function($sorted) use($sort){
      //       $sorted->where('type', 'sort');
      // })->get();
      // $news = News::with(array('platforms' => function($sorted){
      //   $sorted->where('type',$sort);
      // }))->get();
    	// $news = News::find('platforms')->get();
      // $news->platforms();
      // dd($news);

   		return view ('sortednews', compact('news'));

     // //  public function index($sort) {
     // //    return redirect('/sortnews/'.$sort); 
     //  // foreach ($news as $news) {
     //  //   $time = date('M jS, Y', strtotime($news->created_at));
     //  // }
     //  // $comcount = count($news->comment);
     //  $content = str_limit($news->content, 150, ' ...');

     //  return response()->json(array('title' => $news->title, 'id' => $news->id, /*'time' => $time,*/ /*'comcount' => $comcount, */'content' => $content), 200); 
      
    }

    public function sortReviews($sort) {
      $platform = Platform::where('type',$sort)->first();
      $reviews = $platform->reviews;
      return view ('sortedreviews', compact('reviews'));

    }
    // $searchresults = Product::where('name_en', 'LIKE', '%'.$search.'%')->get();
}
