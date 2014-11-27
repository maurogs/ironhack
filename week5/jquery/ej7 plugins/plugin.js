// Create a plugin called reedify that sets the text color to red
//	$.fn.reedify = function(){
//		$(this).css('color', 'red');
//	};
//	$("body").reedify();

// Apply the function to the li elements of jQuery projects
//	$("myContent li").reedify();

// Apply the reedify method and after a fade transition of 1 second
//	$.fn.reedify = function(){
//		$(this).css('color', 'red');
//		return this;
//	};
//	$("li").reedify().fadeOut(1000);

// Add an automatic invocation to all the red class elements
//	$('.red').reedify();


// Create a plugin that remove all the spaces
// And apply it to the p elements

//      	OPCION 1
//	$.fn.spaces = function(){
//		this.each(function(i, element){
//			var space = $(this).text().replace(/ /g,'');
//			console.log(element);
//			return $(this).text(space);
//		});
//	};
//	$("p").spaces();

//        	OPCION 2
//	$.fn.spaces = function(){
//		this.each(function(i, element){
//			var space = $(this).text().replace(/ /g,'');
//			console.log(element);
//			return $(element).text(space);
//		});
//	};
//	$("p").spaces();


//        	OPCION 3
//	$.fn.spaces = function(){
//		$.each.($(this),function(i, element){
//			var space = $(this).text().replace(/ /g,'');
//			console.log(element);
//			return $(this).text(space);
//		});
//	};
//	$("p").spaces();




