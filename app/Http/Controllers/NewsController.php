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

class NewsController extends Controller
{
    public function index(){
        $news = News::orderBy('created_at', 'desc')->get();
        $sidenews = News::orderBy('created_at', 'desc')->take(3)->get();
        $sidereviews = Review::orderBy('created_at', 'desc')->take(3)->get();
        $latest_video = Video::latest()->first();
        return view('news', compact('news', 'sidenews', 'sidereviews', 'latest_video'));
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
        $new_news->title = strtoupper($request->newsTitle);
        $new_news->user_id = Auth::user()->id;
        $new_news->content = $request->newsContent;
        $new_news->save();
        $lastId = $new_news->id;

        /* save platform */
        $platformId = $request->newsPlatform;
        $new_news->platforms()->sync(array($platformId));

        /* save image to storage, db */
        $img = Input::file('newsImg')->hashName();
        $filename = $request->file('newsImg')->store('postimg');
        $path = 'img/'.$filename;

        $new_img = new Image();
        $new_img->news_id = $lastId;
        $new_img->filename = $path;
        $new_img->save();

        if ($request->newsVid != NULL){
        /* save video link */
            $new_vid = new Video();
            $new_vid->news_id = $lastId;
            $new_vid->link = $request->newsVid;
            $new_vid->save();
        }
        
        // Session::flash('status', 'added');
        return redirect('/news/'.$lastId);
    }

    public function showNews($id){
        $news = News::find($id);
        $sidenews = News::orderBy('created_at', 'desc')->take(3)->get();
        $sidereviews = Review::orderBy('created_at', 'desc')->take(3)->get();
        $latest_video = Video::latest()->first();
        return view('newsview', compact('news', 'sidenews', 'sidereviews', 'latest_video'));
    }

    public function showEditNews($id){
        $news = News::find($id);
        $platforms = Platform::all();
        return view('editnews', compact('news', 'platforms'));
    }

    public function edit($id, Request $request) {
        $edit_news = News::find($id);
        $edit_news->title = strtoupper($request->newsTitle);
        $edit_news->content = $request->newsContent;
        $edit_news->save();

        /* save platform */
        $platformId = $request->newsPlatform;
        $edit_news->platforms()->sync(array($platformId));

        if (Input::hasFile('newsImg')){
            $img = Input::file('newsImg')->hashName();
            $filename = $request->file('newsImg')->store('postimg');
            $path = 'img/'.$filename;
            $edit_img = Image::where('news_id', $edit_news->id)->first();
            
            $edit_img->filename = $path;
            $edit_img->save();
        }

        if ($request->newsVid != NULL){
            /* check if post already has a video */
            
            $edit_vid = Video::where('news_id', $edit_news->id)->first();
            if (count($edit_vid) > 0) {
                $edit_vid->link = $request->newsVid;
                $edit_vid->news_id = $edit_news->id;
                $edit_vid->save();
            }
            else {
            $edit_vid = new Video();
            $edit_vid->link = $request->newsVid;
            $edit_vid->news_id = $edit_news->id;
            $edit_vid->save();
            }
        }    

        return redirect('/news/'.$id);

    }

    public function delete($id) {
        $news = News::find($id);
        Image::where('news_id', $news->id)->delete();
        Video::where('news_id', $news->id)->delete();
        News::findOrFail($id)->delete();
        return redirect('/news');
    }
}
