@extends('layouts.app')


@section('title', 'Game News | Couch Gaming')
	
@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h2>NEWS</h2>
			<div class="row">
				{{-- main content--}}
				<div class="col-md-8 top-col">
					{{-- if admin, add addnews button --}}
					@if (Auth::user())
						@if (Auth::user()->role == 1)
							<a href="{{ url('/news/addnews') }}" class="btn btn-lg btn-default-inv btn-block cat-add-btn"><span><i class="fas fa-plus"></i></span>ADD NEWS</a>
						@endif 
					@endif
					{{-- button row --}}
					<div class="row">
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortNews" data-sort="PC">PC</a>
						</div>
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortNews" data-sort="XBOX">XBOX</a>
						</div>
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortNews" data-sort="PS4">PS4</a>
						</div>
						<div class="col-md-3 top-col">
							<a class="btn btn-lg btn-default cat-btn sortNews" data-sort="SWITCH">SWITCH</a>
						</div>
					</div>
					<div id="row-add">	
					@foreach($news as $news)
						<div class="row post-row">
							<div class="col-md-3">
								@foreach($news->images as $image)
									<div class="thumb">
										<img src="{{ asset($image->filename) }}" alt="image"></img>
										@foreach($news->platforms as $platform)
											<span class="thumb-platform {{ $platform->type }}"> {{ $platform->type }}</span>
										@endforeach
									</div>
								@endforeach
							</div>
							<div class="col-md-9">
								<h3 class="remove-margin"><a href="{{ url('/news/'.$news->id) }}" class="post-preview-link">{{ $news->title }}</a></h3>
								<small><span><i class="far fa-calendar-alt"></i></span><span class="post-preview-time txt-space"> {{ date('M jS, Y', strtotime($news->created_at)) }}</span></small><span><i class="fa fa-comments"></i> {{ count($news->comments) }}</span></p>
								<p class="post-preview">{!! str_limit($news->content, 150, ' ...') !!}<a href="{{ url('/news/'.$news->id) }}" class="read-more pull-right">Read more</a></p>
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




{{-- <div class='row post-row'><div class='col-md-3'>@foreach($news->images as $image)<div class='thumb'><img src='{{ asset($image->filename) }}' alt='image'></img>@foreach($news->platforms as $platform)<span class='thumb-platform {{ $platform->type }}'> {{ $platform->type }}</span>@endforeach</div>@endforeach</div><div class='col-md-9'><h3 class='remove-margin'><a href="{{ url('/news/'.$news->id) }}" class='post-preview-link'>{{ $news->title }}</a></h3><small><span><i class='far fa-calendar-alt'></i></span><span class='post-preview-time txt-space'> {{ date('M jS, Y', strtotime($news->created_at)) }}</span></small><span><i class='fa fa-comments'></i> {{ count($news->comments) }}</span></p><p class='post-preview'>{!! str_limit($news->content, 150, ' ...') !!}<a href="{{ url('/news/'.$news->id) }}" class='read-more pull-right'>Read more</a></p></div></div> --}}