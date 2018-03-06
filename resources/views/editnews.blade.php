@extends('layouts.app')

@section('title', 'Edit News - Couch Gaming')

	

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
			<h2>EDIT GAME NEWS</h2>
			<form action='{{ url('/news/'.$news->id.'/editnews') }}' method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="newsTitle" class="news-label">Title:</label>
					<input type="text" class="form-control" name="newsTitle" id="newsTitle" value="{{ $news->title }}"></input>
				</div>
				@foreach($news->images as $image)
					<div class="img-size-post">
						<img class="img-responsive" src="{{ asset($image->filename)  }}" alt="image"></img>
					</div>
				@endforeach
				<div class="form-group">
					<label for="newsPlatform" class="news-label">Select Platform:</label>
					<select class="form-control form-sel" id="newsPlatformSel">
						<option selected disabled>Platforms</option>
						@foreach ($platforms as $platform)
							<option value="{{ $platform->id }}" data-id="{{ $platform->id }}">{{ $platform->type }}</option>
						@endforeach
					</select>
					<input type="hidden" name="newsPlatform" id="newsPlatform" value=""></input>
				</div>
				<div class="form-group">
					<label for="newsImg" class="news-label">Upload Image:</label>
					<input type="file" name="newsImg" id="newsImg" class="form-control">
				</div>
				<div class="form-group">
					<label for="newsContent" class="news-label">Content:</label>
					<textarea class="form-control" rows="10" name="newsContent" id="newsContent">{!! $news->content !!}</textarea>
				</div>
				<div class="form-group">
					<label for="newsVid" class="news-label">Video Embed Link:</label>
					<input type="text" class="form-control" name="newsVid" id="newsVid"></input>
				</div>
				<div class="form-group">
					<input type="submit" value="Save Changes" name="submit">
					<input type="hidden" value="{{ csrf_token() }}" name="_token">
				</div>
			</form>

		</div>
	</div>
</div>

@endsection