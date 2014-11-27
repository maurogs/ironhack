// Replace myContent content with the result of the request google.html
//	$("#myContent").load('/google.html');

// Replace the result div when click on it with the response of submiting the name to the /hello
//	$("#result").click(function(){
//		$.get('/hello/' + $("#name").val(), function(data){
//			$("#result").text(data);
//		});
//	});
//   OTRA FORMA DE HACER:
//	$('#result').bind('click', function(){
//		var name = $("#name").val();
//		$('#result').load('/hello/' + name);
//	});

// Replace the result div when click on it when the user changes the amount or the currency
// path: /exchange with the parameters amount and currency
 // /exchange/?amount=100&currency=euro

//	$("#result").click(function(){
//		var currency = $("#currency").val();
//		var amount = $("#amount").val();

//		$.get('/exchange/?amount=' + amount + '&currency=' + currency, function(data){
//			var result = "";
//			$.each(data, function(index, element){
//				result += index + " "+ element + ". ";
				

//			});
//			$('#result').text(result);

//			console.log(data);
//		});
//	});


// Save (POST) the personal form to the /add route when click on the result div
// Look the the AJAX Response and the status code
//	$("#result").click(function(){

//	console.log($("#personal").serialize());
//		$.post('/add', $("#personal").serialize(),function(data){ 
//			console.log
//		});
//	});

// Make a get request to /sleep when click on the result div
// Show loading while the response does not arrive
// Show the result if everything is ok
// Show 'Error' if there is some problem and change the background-color to red
// When the request ends adds the bordered class to the response
	



	$("#result").click(function(){
		$.ajax({
  			url: "/sleep",
			type: "get",
			data: '',
  			dataType: "html",
  			beforeSend: function(){
  				$("#result").text("Loading");
  			},
  			success: mySuccessFunction,
  			error: myErrorFunction,
  			complete: myCompleteFunction
		});

	});





