describe("Some functions", function(){

	it("calculates the average", function(){
		expect(average([3,3,3])).toEqual(3);
		expect(average([6,4])).toEqual(5);
	});

	it("calculates the maximum", function(){
		expect(max([3,6,1,20])).toEqual(20);
	});

	it("calculates the minimum", function(){
		expect(min([3,6,1,20])).toEqual(1);
	});


});
