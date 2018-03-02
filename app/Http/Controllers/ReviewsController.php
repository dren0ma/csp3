<?php

namespace App\Http\Controllers;
use App\User;
use App\Image;
use App\Review;
use Validator;
use Session;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;


class ReviewsController extends Controller
{
    public function index(){
        $reviews = Review::all();
        $latest_reviews = Review::latest()->first();
        
        return view('reviews', compact('reviews'));
    }

    public function showAddReviews(){
        return view('addreviews');
    }

    public function add(Request $request){
    	$validator = Validator::make($request->all(), [
    	        'reviewsTitle' => 'required|max:255',
    	        'reviewsContent' => 'required',
    	        'reviewsImg' => 'required',
    	    ]);

	    if ($validator->fails()) {
	        return redirect('/reviews/addreviews')
	            ->withInput()
	            ->withErrors($validator);
	    }

        /* create post */
	    $new_reviews = new Review();
	    $new_reviews->title = $request->reviewsTitle;
        $new_reviews->user_id = Auth::user()->id;
        $new_reviews->content = $request->reviewsContent;
	    $new_reviews->save();
	    $lastId = $new_reviews->id;

        /* save image to storage, db */
        $img = Input::file('reviewsImg')->hashName();
        $filename = $request->file('reviewsImg')->store('postimg');
        $path = 'img/'.$filename;

        $new_img = new Image();
        $new_img->reviews_id = $lastId;
        $new_img->filename = $path;
        $new_img->save();
        
        // Session::flash('status', 'added');

    	return redirect('/reviews/'.$lastId);
    }

    public function showReviews($id){
    	$reviews = Reviews::find($id);
    	return view('reviewsview', compact('reviews'));
    }

    public function showEditReviews($id){
        $reviews = Reviews::find($id);
        return view('editreviews', compact('reviews'));
    }

    public function edit($id, Request $request) {
        $edit_reviews = Reviews::find($id);
        $edit_reviews->title = $request->reviewsTitle;
        $edit_reviews->content = $request->reviewsContent;
        $edit_reviews->save();

        $img = Input::file('reviewsImg')->hashName();
        $filename = $request->file('reviewsImg')->store('postimg');
        $path = 'img/'.$filename;

        $edit_img = Image::findOrFail($edit_reviews->id);
        $edit_img->filename = $path;
        $edit_img->save();
        return redirect('/reviews/'.$id);
    }

    public function delete($id) {
        $reviews = Reviews::find($id);
        Image::findOrFail($reviews->id)->delete();
        Reviews::findOrFail($id)->delete();

        return redirect('/reviews');
    }
}
