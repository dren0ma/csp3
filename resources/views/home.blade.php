@extends('layouts.app')

@section('title', 'Home - Couch Gaming')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <h2><span class="text-primary">LATEST</span> NEWS</h2>
            <div class="row news-row-home">
                
                <div class="col-md-6 news-home-left" id="change">
                    {{-- @foreach($latest_news as $news) --}}
                        <div class="bigthumb-home">
                            @foreach($latest_news->images as $image)
                                <img src="{{ asset($image->filename) }}" alt="image"></img>
                            @endforeach
                        </div>
                        <div class="bigthumb-body">
                            <h3 class="h4"><strong>{{ $latest_news->title }}</strong></h3>
                            <p class="post-preview">
                                {!! str_limit($latest_news->content, 150, ' ...') !!}
                            </p>
                            <p>
                                <span><i class="far fa-calendar-alt"></i></span>
                                <span class="post-preview-time txt-space"> {{ date('M jS, Y', strtotime($latest_news->created_at)) }}</span>
                                <a href="{{ url('/news/'.$latest_news->id) }}" class="read-more pull-right">Read more</a>
                            </p>
                        </div>
                    {{-- @endforeach --}}
                </div>
                <div class="col-md-6 news-home-right">
                    @foreach($news as $news)
                        <div class="row news-home-right-row" data-id="{{ $news->id }}">
                            <div class="col-md-3 news-home-col">
                                @foreach($news->images as $image)
                                    <div class="thumb-home">
                                        <img src="{{ asset($image->filename) }}" alt="image"></img>
                                    </div>
                                @endforeach
                            </div>
                            <div class="col-md-9 news-home-col">
                                <h5 class="remove-margin">{{ $news->title }}</h5>
                                <p><small>
                                    <p><span><i class="far fa-calendar-alt"></i></span>
                                    <span class="post-preview-time txt-space"> {{ date('M jS, Y', strtotime($news->created_at)) }}</span>
                                    <span><i class="fa fa-comments"></i> {{ count($news->comments) }}</span></p>
                                </small></p>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection



{{-- 
                        <div class="row post-row">
                            <div class="col-md-3">
                                
                                    
                                        <img src="{{ asset($image->filename) }}" alt="image"></img>
                                        @foreach($news->platforms as $platform)
                                            <span class="thumb-platform {{ $platform->type }}"> {{ $platform->type }}</span>
                                        @endforeach
                                    </div>
                                
                            </div>
                            <div class="col-md-9">
                                <h3 class="remove-margin"><a href="{{ url('/news/'.$news->id) }}" class="post-preview-link">{{ $news->title }}</a></h3>
                                <span><i class="far fa-calendar-alt"></i></span><span class="post-preview-time txt-space"> {{ date('M jS, Y', strtotime($news->created_at)) }}</span></small><span><i class="fa fa-comments"></i> {{ count($news->comments) }}</span></p>
                                <p class="post-preview">{!! str_limit($news->content, 150, ' ...') !!}<a href="{{ url('/news/'.$news->id) }}" class="read-more pull-right">Read more</a></p>
                            </div>
                        </div>
                     --}}