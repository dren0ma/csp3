<?php

namespace App\Http\Controllers;
use App\User;
use App\News;
use App\Image;
use App\Platform;
use Validator;
use Session;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class NewsController extends Controller
{
    public function index(){
        $news = News::all();
        $latest_news = News::latest()->first();

        return view('news', compact('news'));
    }

    public function showAddNews(){
        $platforms = Platform::all();
        return view('addnews', compact('platforms'));
    }

    public function add(Request $request){
    	$validator = Validator::make($request->all(), [
    	        'newsTitle' => 'required|max:255',
    	        'newsContent' => 'required',
    	        'newsImg' => 'required',
                'newsPlatform' => 'required',
    	    ]);

	    if ($validator->fails()) {
	        return redirect('/news/addnews')
	            ->withInput()
	            ->withErrors($validator);
	    }

        /* create post */
	    $new_news = new News();
	    $new_news->title = $request->newsTitle;
        $new_news->user_id = Auth::user()->id;
        $new_news->content = $request->newsContent;
        $new_news->platform = $request->newsPlatform;
	    $new_news->save();
	    $lastId = $new_news->id;

        /* save image to storage, db */
        $img = Input::file('newsImg')->hashName();
        $filename = $request->file('newsImg')->store('postimg');
        $path = 'img/'.$filename;

        $new_img = new Image();
        $new_img->news_id = $lastId;
        $new_img->filename = $path;
        $new_img->save();
        
        // Session::flash('status', 'added');

    	return redirect('/news/'.$lastId);
    }

    public function showNews($id){
    	$news = News::find($id);
    	return view('newsview', compact('news'));
    }

    public function showEditNews($id){
        $news = News::find($id);
        return view('editnews', compact('news'));
    }

    public function edit($id, Request $request) {
        $edit_news = News::find($id);
        $edit_news->title = $request->newsTitle;
        $edit_news->content = $request->newsContent;
        $edit_news->save();

        $img = Input::file('newsImg')->hashName();
        $filename = $request->file('newsImg')->store('postimg');
        $path = 'img/'.$filename;

        $edit_img = Image::findOrFail($edit_news->id);
        $edit_img->filename = $path;
        $edit_img->save();
        return redirect('/news/'.$id);
    }

    public function delete($id) {
        $news = News::find($id);
        Image::findOrFail($news->id)->delete();
        News::findOrFail($id)->delete();

        return redirect('/news');
    }


}
