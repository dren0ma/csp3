@extends('layouts.app')

@section('title', 'Add Review - Couch Gaming')

	

@section('content')
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
	<script>
		tinymce.init ({
			selector: 'textarea'
			// branding: 'false'
			// content_css: '../../public/css/style.css'
		})
	</script>

<div class="container">
	<div class="row">
		<div class="col-sm-8 col-sm-offset-2">
			<h2>ADD GAME REVIEW</h2>
			<form action='{{ url("/reviews/addreview") }}' method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="reviewTitle" class="news-label">Title:</label>
					<input type="text" class="form-control" name="reviewTitle" id="reviewTitle"></input>
				</div>
				<div class="form-group">
					<label for="reviewPlatform" class="news-label">Select Platform:</label>
					<select class="form-control form-sel" id="reviewPlatformSel">
						<option selected disabled>Platforms</option>
						@foreach ($platforms as $platform)
						<option value="{{ $platform->id }}" data-id="{{ $platform->id }}">{{ $platform->type }}</option>
						@endforeach
					</select>
					<input type="hidden" name="reviewPlatform" id="reviewPlatform" value=""></input>
				</div>
				<div class="form-group">
					<label for="reviewImg" class="news-label">Upload Image:</label>
					<input type="file" name="reviewImg" id="reviewImg" class="form-control">
				</div>
				<div class="form-group">
					<label for="reviewContent" class="news-label">Content:</label>
					<textarea class="form-control" rows="10" name="reviewContent" id="reviewContent"></textarea>
				</div>
				<div class="form-group">
					<label for="reviewVid" class="review-label">Video Embed Link:</label>
					<input type="text" class="form-control" name="reviewVid" id="reviewVid"></input>
				</div>
				<div class="form-group">
					<input type="submit" value="Submit Post" name="submit">
					<input type="hidden" value="{{ csrf_token() }}" name="_token">
				</div>
			</form>

		</div>
	</div>
</div>

@endsection