// brute force
function productAll(nums) {
  var result = []
  for (var i = 0; i < nums.length; i++){
    var product = 1;
    for (var j = 0; j < nums.length; j++){
      if (i != j) {
        product *= nums[j];
      }
    }
    result.push(product);
  }
  return result;
}
