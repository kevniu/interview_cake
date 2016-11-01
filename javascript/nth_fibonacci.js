function fib(n){
  if (n == 0) {
    return 0
  }
  else if (n == 1) {
    return 1
  }
  else {
    return fib(n-1) + fib(n-2)
  }
}

function fib(n){
  if (n < 0){
    throw new Error('Index was negative. No such thing as a negative index in a series.');
  } else if (n === 0 || n === 1){
    return n;
  }

  var prevPrev = 0;
  var prev = 1;
  var current;

  for (var x = 1; x < n; x++) {
    current = prev + prevPrev;

    current = prev + prevPrev;
    prevPrev = prev;
    prev = current;
  }
  return current;
}
