// When the page is loaded replace the slogan by "Bazinga!"
//$(function(){
//	$("#slogan").text("Bazinga!");
//});

// When you click on the input to write my name the previous name is deleted
//	$("#name").click(function(){
//		$(this).val("");
//	});	




// When you move your mouse over one jQuery projects it change the background-color to silver
	$("li").mouseleave(function(){
		$("html").css("background-color", "silver");
	});


// With the previous one active, when the user leaves the element remove the background-color
//	$("li").mouseleave(function(){
//		$("html").css("background-color", "");
//	});

// Only when the mouse is over one jQuery project has the bordered class
$("#myContent li").bind("mouseenter mouseleave", function(){
		$(this).toggleClass("bordered");
	});

// When I finish to write my name I want my name written in the result div
//	$("#name").bind("blur",function(){
//		$("#result").text($(this).val());
//	});	

// When I click on any element of the body show the mouse x and y in the result div
//	$("body").click(function(e){
//		$("#result").text("mouseX:"+e.pageX+", mouseY:"+e.pageY);
//	});

// Adds a div with "Hello" at the end of the body when you click on the result div
//	$("#result").click(function(){
//		$('body').append('<div><h1>Hello</h1></div>');
//	});

// Adds a div with "Hello" when you click on the result div only the first time
	$("#result").click(function(){
		$('body').append('<div><h1>Hello</h1></div>');
		$(this).unbind("click");
	});


// Adds a new "jQueryUI" element when clicks over one jQuery project
	$("li").click(function(){
		$("ul").append("<li>jQueryUI</li>");
	});


// Avoid the navigation when you click a link
//	$("a").click(function(e){
//		e.preventDefault();
//	});

// When you click a link go to ironhack.com
	$("a").click(function(){
		$("a").attr("href", "http://www.ironhack.com/");
	});	

// When you click on myContent div, toggle the class bordered to the result
// except if jquery-ui element is clicked.
	//$("#myContent").click(function(e){
	//	$("#result").toggleClass("bordered");
	//});
	//$("#jquery-ui").click(function(e){
	//	e.stopPropagation();
	//});

// When you select a part of the input name the selected part is shown in the result div
	//$("#name").bind("select", function(e){
	//	var target = e.target;
	//	var txt = $(this).val().substring(target.selectionStart, target.selectionEnd);
	//	$("#result").text(txt);
	//});

/**
 * Final round
 */
// Duplicate the jQuery projects when clicks over them
	$("#myContent li").on('click', function(){
		var clone = $(this).clone();
		$(this).after(clone);
	});


// When you uncheck "I love learning" you get an alert with "Really???"
	$('#love').on('change', function(){
		if(!$(this).checked){
		alert('Really?');
		}
	});

// When you resize the page show the size in the result div
	$(window).resize(function(){
		$('#result').text($(window).width()+'px - ')+$(window).height()+'px';
	});

// I want the result div follows my mouse until I click (then will be fixed on the page)
// The mouse should be in the center of the div
	$(window).on('mousemove', function(e){
		var posY = e.pageY-($('#result').outerHeight()/2);
		var posX = e.pageX-($('#result').outerWidth()/2);
			$("#result").offset({'top': posY,
								'left': posX});
			$("body").on('click', function(){
				$(window).unbind('mousemove');
			})
	});

