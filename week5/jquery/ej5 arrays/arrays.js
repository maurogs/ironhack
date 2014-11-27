// In each exercice we will print in the console the result.

var sites = ["Google", "Yahoo", "Facebook", "Microsoft", "Apple"];

// The position of "Microsoft" in the array
	console.log($.inArray("Microsoft", sites));

// If "LinkedIn" is in the sites array
	if ($.inArray("LinkedIn",sites) === -1){
		console.log("nein");
	}

// The name of the companies each name in one line
	$.each(sites, function(i, element){
		console.log(element);
	});


var pow2 = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024];

// The pow of 2 that is 
	$.each(pow2, function(i, element){
		if (element === 64){
			console.log("The pow of 2 of 64 is: "+i);
		}
	});
	//console.log('pow: ' + $.inArray(64,pow2));

// The first 10 pow of 2
	$.each(pow2, function(i, element){
		if (i < 11){
			console.log(i+" pow 2 is "+element);
		}
	});
		


// Double the value of each element of the array
	var result = $.map(pow2, function(element, i){
		return element * 2;
	});
		console.log(result);
	
// Sum the value of all of numbers of the array
	var sum = 0;
	$.each(pow2, function(i, element){
		sum += element;
	});
	console.log("La suma de todos los numeros es : "+sum);

// I want to get the values given by the user but the defalut values in the others
var defaultConfig = {left: 10, top: 20, rigth: 30, bottom: 40};

var myFunction = function (config) {
	return $.extend({}, defaultConfig, config);
};

console.log(myFunction({left: 20, top: 30}));
console.log(defaultConfig);
//el array vacio {} hace que defaultConfig no se modifique



