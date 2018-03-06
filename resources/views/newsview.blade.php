@extends('layouts.app')

@section('title', $news->title.' | Couch Gaming')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h2>GAME NEWS</h2>
			<div class="row">
				{{-- main content--}}
				<div class="col-md-8 top-col">
					<div class="row">
						{{-- if admin, add addnews button --}}
						@if (Auth::user()->role == 1)
						<div class="col-md-6 top-col">
							<a href="{{ url('/news/'.$news->id.'/editnews') }}" class="btn btn-lg btn-default-inv btn-block cat-add-btn"><span><i class="fas fa-edit"></i></span>EDIT</a>
						</div>
						<div class="col-md-6 top-col">
							<a href="{{ url('/news/'.$news->id.'/deletenews') }}" class="btn btn-lg btn-default-inv btn-block cat-add-btn"><span><i class="fas fa-trash"></i></span>DELETE</a>
						</div>
						@endif
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>{{ $news->title }}</h3>
							@foreach($news->images as $image)
								<div class="img-size-post">
									<img class="img-responsive" src="{{ asset($image->filename)  }}" alt="image"></img>
								</div>
							@endforeach
							<h5>{{ $news->title }}</h5>
							<p><small>By </small><small class="author txt-space">{{ $news->user->name}}</small><small><span><i class="far fa-calendar-alt"></i> </span><span class="post-time"> {{ $news->created_at->diffForHumans()}}</span></small></p>

							<p class="post">{!! $news->content !!}</p>

							<!-- 16:9 aspect ratio -->
							@if (count($news->videos) > 0)
								<div class="embed-responsive embed-responsive-16by9">
								    @foreach($news->videos as $video)
								    	<iframe class="embed-responsive-item" src="{{ asset($video->link) }}"></iframe>
									@endforeach
								</div>
							@endif
						</div>
					</div>
					<h2><span class="comment-count">{{ count($news->comments) }}</span>COMMENTS</h2>
					<div class="comments-container">
						@foreach($news->comments as $comment)
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
											@if (Auth::user()->name == $comment->user->name)
												<input type="button" value="DELETE" name="newsCommentDel" id="newsCommentDel" data-id="{{ $comment->id }}" class="btn btn-default-inv">
												<input type="hidden" value="{{ csrf_token() }}" name="newsToken" id="newsToken">
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
								<textarea class="form-control text-area" rows="5" name="newsComment" id="newsComment"></textarea>
							</div>
							<div class="form-group">
								<input type="button" value="ADD COMMENT" name="newsCommentsubmit" id="newsCommentsubmit" data-id="{{ $news->id }}" class="btn btn-default-inv">
								<input type="hidden" value="{{ csrf_token() }}" name="newsToken" id="newsToken">
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



