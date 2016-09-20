// #30 interview cake

function isPalindrome(str) {
  wordArr = str.split('')
  for (var i = 0; i < wordArr.length - 1; i++) {
    if (wordArr[i] != wordArr[wordArr.length - i - 1]) {
      return false
    }
  }
  return true
}
