
    {{-- @foreach($latest_news as $news) --}}
        <div class="bigthumb-home">
            @foreach($clickednews->images as $image)
                <img src="{{ asset($image->filename) }}" alt="image"></img>
            @endforeach
        </div>
        <div class="bigthumb-body">
            <h3 class="h4">{{ $clickednews->title }}</h3>
            <p class="post-preview">
                {!! str_limit($clickednews->content, 150, ' ...') !!}
            </p>
            <p>
                <span><i class="far fa-calendar-alt"></i></span>
                <span class="post-preview-time txt-space"> {{ date('M jS, Y', strtotime($clickednews->created_at)) }}</span>
                <a href="{{ url('/news/'.$clickednews->id) }}" class="read-more pull-right">Read more</a>
            </p>
        </div>
    {{-- @endforeach --}}
