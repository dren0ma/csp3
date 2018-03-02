@extends('layouts.app')


@section('title', 'Game Reviews | Couch Gaming')
	
@section('content')

<div class="container">
	<h2>REVIEWS</h2>
	<div class="row">
		{{-- main --}}
		<div class="col-md-8">
			<a href="#" class="btn btn-lg btn-default cat-btn">PC</a>
			<a href="#" class="btn btn-lg btn-default cat-btn">XBOX ONE</a>
			<a href="#" class="btn btn-lg btn-default cat-btn">PS4</a>
			<a href="#" class="btn btn-lg btn-default cat-btn">SWITCH</a>

			<a href="{{ url('/reviews/addreviews') }}" class="btn btn-lg btn-default pull-right"><span><i class="fas fa-plus"></i></span> ADD REVIEW</a>

			@foreach($reviews as $review)
				<div class="post-row">
					<hr>
					<div class="col-md-3 remove-padding">
						@foreach($review->images as $image)
							<div class="thumb">
								<img src="{{ asset($image->filename)  }}" alt="image"></img>
							</div>
						@endforeach
					</div>
					<div class="col-md-9">
						<h3 class="remove-margin"><a href="{{ url('/reviews/'.$review->id) }}" class="post-preview-link">{{ $review->title }}</a></h3>
						<span><i class="far fa-calendar-alt"></i></span>&nbsp;<span class="post-preview-time">{{ date('M jS, Y', strtotime($review->created_at)) }}</span></small></p>
						<p class="post-preview">{!! str_limit($review->content, 210, ' ...') !!}<a href="{{ url('/reviews/'.$review->id) }}" class="read-more pull-right">Read more</a></p>
					</div>
				</div>

			@endforeach
			
			
		</div>
		{{-- sidebar --}}

		@include('layouts.side')

	</div>
</div>	

@endsection