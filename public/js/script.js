$('#newsPlatformSel').on('change', function(){
    var plat = $('#newsPlatformSel option:selected').attr('value');
    $('#newsPlatform').val(plat);
})

$('#reviewsPlatformSel').on('change', function(){
    var plat = $('#reviewsPlatformSel option:selected').attr('value');
    $('#reviewsPlatform').val(plat);
})