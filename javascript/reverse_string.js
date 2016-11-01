// #26 on interview cake

function reverse_string(str){
  var wordArr = str.split('');

  var temp;
  var startIndex = 0;
  var endIndex = wordArr.length;

  while (startIndex < endIndex){
    temp = wordArr[startIndex]
    wordArr[startIndex] = wordArr[endIndex]
    wordArr[endIndex] = temp;

    startIndex++
    endIndex--
  }
  return wordArr.join('')
}
