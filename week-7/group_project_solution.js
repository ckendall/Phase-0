var sum = function(array){
	sumAll = 0
	for (var i = 0; i < array.length; i++)
	{
		sumAll += array[i];
	}
	return (sumAll);
};


var mean = function(array){
	sumAll = 0
	for (var i = 0; i < array.length; i++)
	{
		sumAll += array[i];
	}
	return (sumAll / array.length);
};


var median = function(array){
	var middle = []
	var middleOfArray = Math.floor(array.length / 2)
	if ((array.length % 2) === 0) {
		middle.push(array[middleOfArray - 1]);
		middle.push(array[middleOfArray]);	
	}
	else {
		middle.push(array[middleOfArray]);
	}
	return middle
};

