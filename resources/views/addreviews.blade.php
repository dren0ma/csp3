@extends('layouts.app')

@section('title', 'Add Reviews - Couch Gaming')

	

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
		<div class="col-sm-12">
			<h2>ADD GAME REVIEW</h2>
			<form action='{{ url("/reviews/addreviews") }}' method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="reviewstitle" class="reviewslabel">Title:</label>
					<input type="text" class="form-control" name="reviewsTitle" id="reviewsTitle"></input>
				</div>
				<div class="form-group">
					<label for="reviewsPlatform" class="reviewslabel">Select Platform:</label>
					<select class="form-control form-sel" id="reviewsPlatformSel">
						<option selected disabled>Platforms</option>
						@foreach ($platforms as $platform)
						<option value="{{ $platform->id }}" data-id="{{ $platform->id }}">{{ $platform->type }}</option>
						@endforeach
					</select>
					<input type="hidden" name="reviewsPlatform" id="reviewsPlatform" value=""></input>
				</div>
				<div class="form-group">
					<label for="img" class="reviewslabel">Upload Image:</label>
					<input type="file" name="reviewsImg" id="reviewsImg" class="form-control">
				</div>
				<div class="form-group">
					<label for="reviewscontent" class="reviewslabel">Content:</label>
					<textarea class="form-control" rows="10" name="reviewsContent" id="reviewsContent"></textarea>
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