<?php

namespace App\Http\Controllers;
use App\News;
use App\Review;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::orderBy('created_at', 'desc')->take(4)->get();
        $latest_news = News::latest()->first();
        $reviews = Review::orderBy('created_at', 'desc')->take(4)->get();
        return view('home', compact('news', 'reviews', 'latest_news'));
    }

    public function newsClick($id) {
        $clickednews = News::find($id);

        return view ('clickedhomenews', compact('clickednews'));
    }
}
