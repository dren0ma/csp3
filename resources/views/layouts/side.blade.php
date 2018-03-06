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