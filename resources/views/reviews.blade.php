@extends('layouts.app')


@section('title', 'Game Reviews | Couch Gaming')
	
@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h2>REVIEWS</h2>
			<div class="row">
				{{-- main content--}}
				<div class="col-md-8 top-col">
					{{-- if admin, add addreview button --}}
					@if (Auth::user())
						@if (Auth::user()->role == 1)
							<a href="{{ url('/reviews/addreview') }}" class="btn btn-lg btn-default-inv btn-block cat-add-btn"><span><i class="fas fa-plus"></i></span>ADD REVIEW</a>
						@endif 
					@endif
					{{-- button row --}}
					<div class="row">
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortReviews" data-sort="PC">PC</a>
						</div>
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortReviews" data-sort="XBOX">XBOX</a>
						</div>
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortReviews" data-sort="PS4">PS4</a>
						</div>
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortReviews" data-sort="SWITCH">SWITCH</a>
						</div>
					</div>
					<div id="row-add">
					@foreach($reviews as $review)
						<div class="row post-row">
							<div class="col-md-3">
								@foreach($review->images as $image)
									<div class="thumb">
										<img src="{{ asset($image->filename)  }}" alt="image"></img>
										@foreach($review->platforms as $platform)
											<span class="thumb-platform {{ $platform->type }}"> {{ $platform->type }}</span>
										@endforeach
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
				</div> {{-- main content --}}
				{{-- sidebar --}}
				@include('layouts.side')
			</div> {{-- content row --}}
		</div> {{-- body col --}}
	</div> {{-- body row --}}
</div> {{-- container --}}

@endsection