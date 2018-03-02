@extends('layouts.app')

@section('title', $news->title.' | Couch Gaming')

@section('content')

<div class="container">
	<h2>GAME NEWS</h2>
	<div class="row">
		<div class="col-sm-8">
			<a href="{{ url('/news/'.$news->id.'/editnews') }}" class="btn btn-lg btn-default cat-btn"><span><i class="fas fa-plus"></i></span>EDIT</a>
			<a href="{{ url('/news/'.$news->id.'/deletenews') }}" class="btn btn-lg btn-default cat-btn"><span><i class="fas fa-plus"></i></span>DELETE</a>
			<h3>{{ $news->title }}</h3>
			@foreach($news->images as $image)
				<div class="img-size-post">
					<img class="img-responsive" src="{{ asset($image->filename)  }}" alt="image"></img>
				</div>
			@endforeach
			<h4>{{ $news->title }}</h4>
			<p><small>By</small>&nbsp;<small class="author">{{ $news->user->name}}</small><small><span><i class="far fa-calendar-alt"></i></span>&nbsp;<span class="post-time">{{ $news->created_at->diffForHumans()}}</span></small></p>

			<p class="post">{!! $news->content !!}</p>
 		</div>
 		{{-- sidebar --}}

		@include('layouts.side')
	</div>
</div>

@endsection



{{-- <div class="container">
	<div class="row">
		<div class="col-sm-8">
		<h2>ADD GAME NEWS</h2>
		<h3>DOTA 2 IS MOVING TO A BI-WEEKLY UPDATE SCHEDULE</h3>
		<div class="img-size-post">
			<img class="img-responsive" src="{{asset('img/postimg/post-1a2.png')}}" alt="image"></img>
		</div>
		<h4>DOTA 2 IS MOVING TO A BI-WEEKLY UPDATE SCHEDULE</h4>
		<p><small>By </small><small class="author">Couch Gaming</small><small> Date</small></p>

		<p>Nearly five years after the debut of Dota 2, lead developer IceFrog has decided that it's time to try something different. For the next six months, give or take, the huge, sweeping patches that followers are familiar with are out, and smaller, more frequent updates are in. 

		<h2>\\</h2>
		<p><em>We want to try taking a different approach to how gameplay patches are released. Instead of big patches a couple of times a year, we'll be releasing small patches every 2 weeks on Thursdays. We'll be trying this out for about six months and then reevaluating.</em></p>
		<p><em>-IceFrog</em></p>
		
		<h2 class="h2-alt">//</h2>
		<p>It's not as though Dota 2 hasn't been updated on an ongoing basis prior to this, but those were generally small spasms of tweaks and tuning. More significant changes would appear in major updates, like the Dueling Fates update that went live last November. IceFrog didn't say what drove the decision to move to a more rapid-fire schedule, but as Dot Esports pointed out, the shift could have a real impact on the Dota 2 pro scene: Teams will have to adjust to changes far more frequently than they did under the old system, possibly including—unless Valve makes allowances for interruptions in the schedule—in the midst of tournaments.

		It's possible that the whole thing will prove to be a bust, and that the old system held up for as long as it did precisely because it worked well and helped drive the excitement that's kept fans invested in Dota 2. Nobody likes to wait, but having a Big Thing to look forward to is arguably more engaging than routine bi-weekly maintenance.

		IceFrog also said that, to help players keep up with the faster-paced schedule, a new feature will be added to the game to notify players of hero changes. As for which Thursday will see this new schedule get underway, has not yet been announced.</p>
 		</div>
	</div>
</div> --}}