<?php

namespace App\Http\Controllers;
use App\User;
use App\News;
use App\Review;
use App\Image;
use App\Video;
use App\Comment;
use App\Platform;
use Validator;
use Session;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class ReviewsController extends Controller
{
    public function index(){
        $reviews = Review::orderBy('created_at', 'desc')->get();
        $sidenews = News::orderBy('created_at', 'desc')->take(3)->get();
        $sidereviews = Review::orderBy('created_at', 'desc')->take(3)->get();
        $latest_video = Video::latest()->first();
        return view('reviews', compact('reviews', 'sidenews', 'sidereviews', 'latest_video'));
    }

    public function showAddReview(){
        $platforms = Platform::all();
        return view('addreview', compact('platforms'));
    }

    public function add(Request $request){
        $validator = Validator::make($request->all(), [
                'reviewTitle' => 'required|max:255',
    	        'reviewContent' => 'required',
    	        'reviewImg' => 'required',
                'reviewPlatform' => 'required',
    	    ]);


	    if ($validator->fails()) {
	        return redirect('/reviews/addreview')
	            ->withInput()
	            ->withErrors($validator);
	    }

        /* create post */
	    $new_review = new Review();
	    $new_review->title = strtoupper($request->reviewTitle);
        $new_review->user_id = Auth::user()->id;
        $new_review->content = $request->reviewContent;
	    $new_review->save();
	    $lastId = $new_review->id;

        /* save platform */
        $platformId = $request->reviewPlatform;
        $new_review->platforms()->sync(array($platformId));

        /* save image to storage, db */
        $img = Input::file('reviewImg')->hashName();
        $filename = $request->file('reviewImg')->store('postimg');
        $path = 'img/'.$filename;

        $new_img = new Image();
        $new_img->review_id = $lastId;
        $new_img->filename = $path;
        $new_img->save();
        
        if ($request->reviewVid != NULL){
        /* save video link */
            $new_vid = new Video();
            $new_vid->review_id = $lastId;
            $new_vid->link = $request->reviewVid;
            $new_vid->save();
        }

        // Session::flash('status', 'added');
    	return redirect('/reviews/'.$lastId);
    }

    public function showReview($id){
    	$review = Review::find($id);
        $sidenews = News::orderBy('created_at', 'desc')->take(3)->get();
        $sidereviews = Review::orderBy('created_at', 'desc')->take(3)->get();
        $latest_video = Video::latest()->first();
        return view('reviewview', compact('review', 'sidenews', 'sidereviews', 'latest_video'));
    }

    public function showEditReview($id){
        $review = Review::find($id);
        $platforms = Platform::all();
        return view('editreview', compact('review', 'platforms'));
    }

    public function edit($id, Request $request) {
        $edit_review = Review::find($id);
        $edit_review->title = strtoupper($request->reviewTitle);
        $edit_review->content = $request->reviewContent;
        $edit_review->save();

        /* save platform */
        $platformId = $request->reviewPlatform;
        $edit_review->platforms()->sync(array($platformId));

        if (Input::hasFile('reviewImg')){
            $img = Input::file('reviewImg')->hashName();
            $filename = $request->file('reviewImg')->store('postimg');
            $path = 'img/'.$filename;
            $edit_img = Image::where('review_id', $edit_review->id)->first();
            
            $edit_img->filename = $path;
            $edit_img->save();
        }

        if ($request->reviewVid != NULL){
            /* check if post already has a video */
            
            $edit_vid = Video::where('review_id', $edit_review->id)->first();
            if (count($edit_vid) > 0) {
                $edit_vid->link = $request->reviewVid;
                $edit_vid->review_id = $edit_review->id;
                $edit_vid->save();
            }
            else {
            $edit_vid = new Video();
            $edit_vid->link = $request->reviewVid;
            $edit_vid->review_id = $edit_review->id;
            $edit_vid->save();
            }
        }    

        return redirect('/reviews/'.$id);
    }

    public function delete($id) {
        $review = Review::find($id);
        Image::where('review_id', $review->id)->delete();
        Video::where('review_id', $review->id)->delete();
        Review::findOrFail($id)->delete();
        return redirect('/reviews');
    }
}
