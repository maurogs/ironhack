// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

jQuery(function($){
	$("#comment_form_button").click(function(){
		$(this).effect('explode');
		var $commentForm = $('#comment_form');


		$commentForm.show(200, function(){
		$commentForm.effect('pulsate');;
		});
	});
});



//ALTERNATIVA EN CASO DE UNA FUNCION AUTOLLAMADA
//CARGA EL SCOPE PERO NO ESPERA QUE SE CARGUE LA PAGINA

// (function($){
// 	$("#comment_form_button").click (function(){
// 		$('#comment_form').show();
// 		$(this).hide();
// 	});
// })(jQuery);

