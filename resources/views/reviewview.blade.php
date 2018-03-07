@extends('layouts.app')

@section('title', $review->title.' | Couch Gaming')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2>GAME REVIEW</h2>
            <div class="row">
                {{-- main content--}}
                <div class="col-md-8 top-col">
                    <div class="row">
                        {{-- if admin, add addnews button --}}
                        @if (Auth::user())
                            @if (Auth::user()->role == 1)
                                <div class="col-md-6 top-col">
                                    <a href="{{ url('/reviews/'.$review->id.'/editreview') }}" class="btn btn-lg btn-default-inv btn-block cat-add-btn"><span><i class="fas fa-edit"></i></span>EDIT</a>
                                </div>
                                <div class="col-md-6 top-col">
                                    <a href="{{ url('/reviews/'.$review->id.'/deletereview') }}" class="btn btn-lg btn-default-inv btn-block cat-add-btn"><span><i class="fas fa-trash"></i></span>DELETE</a>
                                </div>
                            @endif
                        @endif
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h3>{{ $review->title }}</h3>
                            @foreach($review->images as $image)
                                <div class="img-size-post">
                                    <img class="img-responsive" src="{{ asset($image->filename)  }}" alt="image"></img>
                                </div>
                            @endforeach
                            <h5>{{ $review->title }}</h5>
                            <p><small>By</small>&nbsp;<small class="author txt-space">{{ $review->user->name}}</small><small><span><i class="far fa-calendar-alt"></i></span><span class="post-time">{{ $review->created_at->diffForHumans()}}</span></small></p>

                            <p class="post">{!! $review->content !!}</p>

                            <!-- 16:9 aspect ratio -->
                            @if (count($review->videos) > 0)
                                <div class="embed-responsive embed-responsive-16by9">
                                    @foreach($review->videos as $video)
                                        <iframe class="embed-responsive-item" src="{{ asset($video->link) }}"></iframe>
                                    @endforeach
                                </div>
                            @endif
                        </div>
                    </div>
                    <h2><span class="comment-count">{{ count($review->comments) }}</span>COMMENTS</h2>
                    <div class="comments-container">
                        @foreach($review->comments as $comment)
                        <div class="row comment-row" id="{{ $comment->id }}">
                            <div class="col-md-12">
                                <div class="media">
                                    <div class="media-left media-top">
                                            
                                    </div>
                                    <div class="media-body">
                                        <div class="form-group">        
                                            <p>
                                                {{ $comment->comment }}
                                            </p>
                                            <p>
                                                <small>
                                                    by 
                                                </small>
                                                <small class="post-time txt-space2">
                                                    {{ $comment->user->name}}
                                                </small>
                                                <small class="txt-space2">
                                                    {{ $comment->created_at->diffForHumans()}}
                                                </small>
                                                @if (Auth::user())
                                                    @if (Auth::user()->id == $comment->user->id)
                                                        <input type="button" value="DELETE" name="reviewCommentDel" id="reviewCommentDel" data-id="{{ $comment->id }}" class="btn btn-default-inv pull-right">
                                                        <input type="hidden" value="{{ csrf_token() }}" name="reviewToken" id="reviewToken">
                                                    @endif
                                                @endif
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            @guest
                            @else
                            <h2>ADD COMMENT</h2>
                            <div class="form-group">
                                <textarea class="form-control text-area" rows="5" name="reviewComment" id="reviewComment"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="button" value="ADD COMMENT" name="reviewCommentsubmit" id="reviewCommentsubmit" data-id="{{ $review->id }}" class="btn btn-default-inv">
                                <input type="hidden" value="{{ csrf_token() }}" name="reviewToken" id="reviewToken">
                            </div>
                            @endguest
                        </div>
                    </div>
                </div> {{-- main content --}}
                {{-- sidebar --}}
                @include('layouts.side')
            </div> {{-- content row --}}
        </div> {{-- body col --}}
    </div> {{-- body row --}}
</div> {{-- container --}}

@endsection



