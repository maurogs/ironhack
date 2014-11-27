$("#check-emails").click(function(){

	$.get('/email/new', function(data){ 
		$.each(data, function(id, email){

			$("#emails").prepend('<li data-id="' + id + '">'+
						'<div class="checked" data-checked="false"></div>'+
					   '<div class="starred" data-starred="' + email.starred + '"></div>'+
					   '<div class="from">' + email.from    + '</div>'+
					   '<div class="subject">' + email.subject + '</div>'+
				   	   '<div class="preview">' + email.preview + '</div>'+
				"</li>");
			console.log(id);
			console.log(email);



		});
	});


});


//$(".from").click(function(){
//var id = $(this).parent().data('id');

$("#emails").click(function(){
	var id = $(this).data('id');

	$.get('/email/' + id, function(data){ 
			console.log(data.email);
	});

});