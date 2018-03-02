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
Route::get('/reviews/addreviews', 'ReviewsController@showAddReviews');
Route::post('/reviews/addreviews', 'ReviewsController@add');

Route::get('/reviews/{id}', 'ReviewsController@showReviews');

Route::get('/reviews/{id}/editreviews', 'ReviewsController@showEditReviews');
Route::post('/reviews/{id}/editreviews', 'ReviewsController@edit');

Route::get('/reviews/{id}/deletereviews', 'ReviewsController@delete');


// auth
Route::get('auth/{provider}', 'Auth\AuthController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\AuthController@handleProviderCallback');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
