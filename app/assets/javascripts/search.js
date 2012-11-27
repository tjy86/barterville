$(function (){

    $('body').keypress(pressed_key);
	$('#searchdiv').hide()

});

function pressed_key(key) {
	 // ctrl-f
     if(key.keyCode == 6) {
          $('#searchdiv').fadeIn();
          $('#searchdiv input #name').val('');
          $('#searchdiv input #name').focus(); 
     }
     // ctrl-h
     if(key.keyCode == 8) {
          $('#searchdiv').fadeOut();
     }

}