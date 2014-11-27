// Change the width of the h1 element
//$("h1").css("width", "130px");

// Change the font-size up to 120%
//$("body").css("font-size", "120%");

// Add the hightlighted class to the elements that has the 'new' class
//$(".new").addClass("hightlighted");

// Remove the title class from h1
//$("h1").removeClass("title");

// Specify the age range in 20-30
//$("#age-range").val("20-30");

// Specify the age range in 20-30 using travesing filters
//$("option").eq(4).prop("selected", false); ESTE NO HACE FALTA
//$("#age-range option").eq(2).prop("selected", "selected");

// Uncheck the "I love learning" checkbox
//$("#love").prop("checked", false);

// Select yellow as a favourite color
//$("#color-yellow").prop("checked", true);

// Write the selected name of the input in the result 
//value = $("#color-red").prop("value");
//$("#result").text(value);

	//$("#result").html($("#name").val());

// Write the text of the selected age in the result div
//value = $("option").eq(4).text();
//$("#result").text(value);

	//$("#result").html($("#age-range option:checked").text());

// Writes the number of data likes of jquery-ui in the result div
//value = $("#jquery-ui").data("likes");
//$("#result").text(value);

// Adds 100 to the number of likes and show it in the result div
//likes = $("#jquery-ui").data('likes') + 100;
//$("#result").html($("#jquery-ui").data('likes'));

// Show the absolute position of result in the console
//value = $("#result").css("position");
//console.log(value);

// Move the result to the position 100 top and 150 left
//var pos = $("#result").offset({top: 100, left: 150});
//console.log($("#result").offset());

// Change the width and height of the result up to 300px
//$("#result").width("300px").height("300px");

// Add "(User interface)" after "JQueryUI"
//$("#jquery-ui").append(" (User interface)");

// Add a li element with the text "Future JQ" after jQueryUI
//$("#jquery-ui").after("<li>Future JQ</li>");

// Add div containers with the class bordered around every li
//$("li").wrap('<div class="bordered">');

// Add a div container with the class bordered around all li
//$("li").wrapAll('<div class="bordered">');

// Remove the result div
//$("#result").remove();

/**
 *  Final round
 */

// Set the the names of the colours according to their color
//$("label").eq(3).css("color", "red");
//$("label").eq(4).css("color", "blue");
//$("label").eq(5).css("color", "green");
//$("label").eq(6).css("color", "yellow");
$("label").has("input[name='color']").css('color', function(){
	return $(this).children().first().val(); //Opcion1
	// return $(this).children(':first').val(); //Opcion2
});


// Add links to the li elements, the url is the name ended with .com
$("li").html(function(){
	var currentText = $(this).text();
	return "<a href='http://" + currentText + ".com'>" + currentText + "</a>";
});
