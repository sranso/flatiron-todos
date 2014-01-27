describe("#first_even", function() {
  it("should return the first even element in a array of integers", function() {
    expect(first_even([1,3,5,8])).toEqual(8);
  });
  it("should return the first even element in a array of integers", function() {
    expect(first_even([1,3,5])).toEqual();
  });
});