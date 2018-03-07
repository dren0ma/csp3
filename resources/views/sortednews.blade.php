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