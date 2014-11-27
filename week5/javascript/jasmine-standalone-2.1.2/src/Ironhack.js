function average(numbers){
	var total = 0;
	var average = 0;
	for (i=0; i<numbers.length; i++){
		total += (numbers[i]);
	};
	average = total / i;
	return average
};

function max(numbers){
	var num = 0;
	var max = numbers[0];

	for (i=0; i<numbers.length; i++){
		num = numbers[i];

		if (num > max){max = num;};
	};
	return max;
};

function min(numbers){
	var num = 0;
	var min = numbers[0];
	for (i=0; i<numbers.length; i++){
		num = numbers[i];

		if (num < min){min = num;};
	};
	return min;
};



