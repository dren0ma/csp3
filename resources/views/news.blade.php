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
					@if(Auth::user())
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
								<span><i class="far fa-calendar-alt"></i></span><span class="post-preview-time txt-space"> {{ date('M jS, Y', strtotime($news->created_at)) }}</span></small><span><i class="fa fa-comments"></i> {{ count($news->comments) }}</span></p>
								<p class="post-preview">{!! str_limit($news->content, 150, ' ...') !!}<a href="{{ url('/news/'.$news->id) }}" class="read-more pull-right">Read more</a></p>
							</div>
						</div>
					@endforeach
				</div> {{-- main content --}}
				{{-- sidebar --}}
				@include('layouts.side')

				<div class="col-md-4 side-col">
	<div class="row">
		<div class="col-md-12 side-col">
			<div class="input-group">
				<input type="text" class="form-control search" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default-inv" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 side-col">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4><span class="text-primary">LATEST</span> VIDEO</h3>
				</div>
				<div class="panel-body">
					{{-- 4:3 aspect ratio --}}
					<div class="embed-responsive embed-responsive-4by3">
					    <iframe class="embed-responsive-item" src="{{ $latest_video->link }}"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
	{{-- latest news --}}
	<div class="row">
		<div class="col-md-12 side-col">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4><span class="text-primary">LATEST</span> NEWS</h3>
				</div>
				<div class="panel-body">
				@foreach($sidenews as $sidenews)
					<div class="row">
						<div class="col-md-4 side-col">
							@foreach($sidenews->images as $image)
								<div class="side-thumb">
									<img src="{{ asset($image->filename)  }}" alt="image"></img>
								</div>
							@endforeach
						</div>
						<div class="col-md-8 side-col">
							<h5 class="remove-margin"><a href="{{ url('/news/'.$sidenews->id) }}" class="post-preview-link">{{ $sidenews->title }}</a></h5>
							<span><i class="far fa-calendar-alt"></i></span>&nbsp;<span class="post-preview-time">{{ date('M jS, Y', strtotime($sidenews->created_at)) }}</span></small></p>
						</div>
					</div>
				@endforeach
				</div>
			</div>
		</div>
	</div>
	{{-- latest reviews --}}
	<div class="row">
		<div class="col-md-12 side-col">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4><span class="text-primary">LATEST</span> REVIEWS</h3>
				</div>
				<div class="panel-body">
				@foreach($sidereviews as $sidereview)
					<div class="row">
						<div class="col-md-4 side-col">
							@foreach($sidereview->images as $image)
								<div class="side-thumb">
									<img src="{{ asset($image->filename)  }}" alt="image"></img>
								</div>
							@endforeach
						</div>
						<div class="col-md-8 side-col">
							<h5 class="remove-margin"><a href="{{ url('/reviews/'.$sidereview->id) }}" class="post-preview-link">{{ $sidereview->title }}</a></h5>
							<span><i class="far fa-calendar-alt"></i></span>&nbsp;<span class="post-preview-time">{{ date('M jS, Y', strtotime($sidereview->created_at)) }}</span></small></p>
						</div>
					</div>
				@endforeach
				</div>
			</div>
		</div>
	</div>
	
</div> {{-- side content --}}



			</div> {{-- content row --}}
		</div> {{-- body col --}}
	</div> {{-- body row --}}
</div> {{-- container --}}

@endsection