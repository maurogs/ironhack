// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(function($) {
	$.ajaxSetup({cache: false}); 
	$.get('/kiss/ajax').done(function(data){
		var $json = $('#json');
		$json.text(JSON.stringify(data));
	});
});
