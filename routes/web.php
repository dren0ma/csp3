<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/', 'HomeController@index')->name('home');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/news', 'NewsController@index')->name('news');
Route::get('/reviews', 'ReviewsController@index')->name('reviews');

// news
Route::get('/news/addnews', 'NewsController@showAddNews');
Route::post('/news/addnews', 'NewsController@add');

Route::get('/news/{id}', 'NewsController@showNews');

Route::get('/news/{id}/editnews', 'NewsController@showEditNews');
Route::post('/news/{id}/editnews', 'NewsController@edit');

Route::get('/news/{id}/deletenews', 'NewsController@delete');

// reviews
Route::get('/reviews/addreview', 'ReviewsController@showAddReview');
Route::post('/reviews/addreview', 'ReviewsController@add');

Route::get('/reviews/{id}', 'ReviewsController@showReview');

Route::get('/reviews/{id}/editreview', 'ReviewsController@showEditReview');
Route::post('/reviews/{id}/editreview', 'ReviewsController@edit');

Route::get('/reviews/{id}/deletereview', 'ReviewsController@delete');

//comments
Route::post('news/{id}/addcomment', 'CommentsController@addNewsComment');
Route::post('news/{id}/deletecomment', 'CommentsController@deleteNewsComment');

Route::post('reviews/{id}/addcomment', 'CommentsController@addReviewComment');
Route::post('reviews/{id}/deletecomment', 'CommentsController@deleteReviewComment');

// auth
Route::get('auth/{provider}', 'Auth\AuthController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\AuthController@handleProviderCallback');

// search

Route::get('/sortnews/{sort}', 'SearchController@sortNews');
Route::get('/sortreviews/{sort}', 'SearchController@sortReviews');

// home

Route::post('/{id}/homenewsclick', 'HomeController@newsClick');





Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
