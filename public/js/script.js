/* assign selected platform value */
$('#newsPlatformSel').on('change', function(){
    var plat = $('#newsPlatformSel option:selected').attr('value');
    $('#newsPlatform').val(plat);
})

$('#reviewPlatformSel').on('change', function(){
    var plat = $('#reviewPlatformSel option:selected').attr('value');
    $('#reviewPlatform').val(plat);
})

/* platform sort */

// $('.sortNews').on('click', function() {
//     var sort = $(this).data('sort');

//     $.ajax({
//         type: 'GET',
//         url: '/sortnews/'+sort, 
//         headers: {
//             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//         },
//         data: {
//             sort: sort,
//         },
//         success: function(data) {

//         }
//     });
// }


/* comments ajax */
$('#newsCommentsubmit').on('click', function() {
    
    var comment = $('#newsComment').val();
    $('#newsComment').val('');  // Empty input element
    var id = $(this).data('id');
    // var content = '<div class="row comment-row"><div class="col-md-12"><div class="media"><div class="media-left media-top"></div><div class="media-body">{{ $comment->comment }}<p><small>By</small>&nbsp;<small class="post-time">{{ $comment->user->name}} {{ $comment->created_at->diffForHumans()}}</small></p></div></div></div></div>';
    // console.log(content);

	$.ajax({
		type: 'POST',
		url: ''+ id + '/addcomment',
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		},
		data: {
			comment: comment,
			id: id
		},
		success: function(data) {
            var content = '<div class="row comment-row"><div class="col-md-12"><div class="media"><div class="media-left media-top"></div><div class="media-body">'+data.comment+'<p><small>By</small><small class="post-time txt-space2">'+data.user+''+data.time+'</small></p></div></div></div></div>'
			// console.log(content);
            $('div.comments-container').append(content);

		}
    });
});

$('#newsCommentDel').on('click', function() {
    
    var id = $(this).data('id');

    $.ajax({
        type: 'POST',
        url: ''+ id + '/deletecomment',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            id: id
        },
        success: function(data) {
        }
    });

    $('#'+id).remove();
    
});

$('#reviewCommentsubmit').on('click', function() {
    
    var comment = $('#reviewComment').val();
    $('#reviewComment').val('');  // Empty input element
    var id = $(this).data('id');
    // var content = '<div class="row comment-row"><div class="col-md-12"><div class="media"><div class="media-left media-top"></div><div class="media-body">{{ $comment->comment }}<p><small>By</small>&nbsp;<small class="post-time">{{ $comment->user->name}} {{ $comment->created_at->diffForHumans()}}</small></p></div></div></div></div>';
    // console.log(content);

    $.ajax({
        type: 'POST',
        url: ''+ id + '/addcomment',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            comment: comment,
            id: id
        },
        success: function(data) {
            var content = '<div class="row comment-row"><div class="col-md-12"><div class="media"><div class="media-left media-top"></div><div class="media-body">'+data.comment+'<p><small>By</small><small class="post-time txt-space2">'+data.user+'</small><small>'+data.time+'</small></p></div></div></div></div>'
            // console.log(content);
            $('div.comments-container').append(content);

        }
    });
});

$('#reviewCommentDel').on('click', function() {
    
    var id = $(this).data('id');

    $.ajax({
        type: 'POST',
        url: ''+ id + '/deletecomment',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            id: id
        },
        success: function(data) {
        }
    });

    $('#'+id).remove();
    
});

