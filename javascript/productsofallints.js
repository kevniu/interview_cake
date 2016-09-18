arr = [1, 7, 3, 4];

// brute force approach
function getProductsOfAllIntsExceptAtIndex(arr) {
  var output = [];
  var product;
  for (var i = 0; i < arr.length; i++) {
    product = 1;
    for (var j = 0; j < arr.length; j++){
      if (i != j) {
        product *= arr[j];
      }
    }
    output.push(product);
  }
  return output;
}
