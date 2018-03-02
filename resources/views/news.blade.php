@extends('layouts.app')


@section('title', 'Game News | Couch Gaming')
	
@section('content')

<div class="container">
	<h2>NEWS</h2>
	<div class="row">
		{{-- main --}}
		<div class="col-sm-8">
			<a href="#" class="btn btn-lg btn-default cat-btn">PC</a>
			<a href="#" class="btn btn-lg btn-default cat-btn">XBOX ONE</a>
			<a href="#" class="btn btn-lg btn-default cat-btn">PS4</a>
			<a href="#" class="btn btn-lg btn-default cat-btn">SWITCH</a>
			@if (Auth::user()->role == 'admin')
				<a href="{{ url('/news/addnews') }}" class="btn btn-lg btn-default pull-right"><span><i class="fas fa-plus"></i></span> ADD NEWS</a>
			@endif

			@foreach($news as $news)
				<div class="post-row">
					
					<div class="col-sm-3 remove-padding">
						@foreach($news->images as $image)
							<div class="thumb">
								<img src="{{ asset($image->filename)  }}" alt="image"></img>
							</div>
						@endforeach
					</div>

					<div class="col-sm-9">
						<h3 class="remove-margin"><a href="{{ url('/news/'.$news->id) }}" class="post-preview-link">{{ $news->title }}</a></h3>
						<span><i class="far fa-calendar-alt"></i></span>&nbsp;<span class="post-preview-time">{{ date('M jS, Y', strtotime($news->created_at)) }}</span></small></p>
						<p class="post-preview">{!! str_limit($news->content, 210, ' ...') !!}<a href="{{ url('/news/'.$news->id) }}" class="read-more pull-right">Read more</a></p>
					</div>
				</div>

			@endforeach
			
			
		</div>
		{{-- sidebar --}}

		@include('layouts.side')

	</div>
</div>	

@endsection