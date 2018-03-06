<?php

namespace App\Http\Controllers;
use App\User;
use App\News;
use App\Comment;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class CommentsController extends Controller
{
    public function addNewsComment(Request $request){
    	$comment = new Comment();
    	$comment->comment = $request->comment;
    	$comment->user_id = Auth::user()->id;
    	$comment->news_id = $request->id;
    	$comment->save();
        $commentId = $comment->id;

    	// get user
		$user = User::find($comment->user_id);
		$name = $user->name;

		// get time
		$time = $comment->created_at->diffForHumans();

    	return response()->json(array('user' => $name, 'comment' => $comment->comment, 'comment_id' =>$commentId, 'time' => $time), 200); 
    	
    }

    public function deleteNewsComment(Request $request){
        $comment = Comment::findOrfail($request->id);
        $comment->delete();

    }

    public function addReviewComment(Request $request){
        $comment = new Comment();
        $comment->comment = $request->comment;
        $comment->user_id = Auth::user()->id;
        $comment->review_id = $request->id;
        $comment->save();
        $commentId = $comment->id;

        // get user
        $user = User::find($comment->user_id);
        $name = $user->name;

        // get time
        $time = $comment->created_at->diffForHumans();

        return response()->json(array('user' => $name, 'comment' => $comment->comment, 'comment_id' =>$commentId, 'time' => $time), 200); 
        
    }

    public function deleteReviewComment(Request $request){
        $comment = Comment::findOrfail($request->id);
        $comment->delete();
    }





}
