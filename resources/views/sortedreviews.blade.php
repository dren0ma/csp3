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