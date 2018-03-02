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
					<label for="news-title" class="news-label">Title:</label>
					<input type="text" class="form-control" name="newsTitle" id="newsTitle"></input>
				</div>
				<div class="form-group">
					<label for="img" class="news-label">Upload Image:</label>
					<input type="file" name="newsImg" id="newsImg" class="form-control">
				</div>
				<div class="form-group">
					<label for="news-content" class="news-label">Content:</label>
					<textarea class="form-control" rows="10" name="newsContent" id="newsContent"></textarea>
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