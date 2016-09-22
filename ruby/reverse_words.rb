# 27 interview questions

def reverse_words(str)
  words_arr = str.split(' ');

  left_pointer = 0
  right_pointer = words_arr.length - 1

  while left_pointer < right_pointer
      temp = word_arr[left_pointer]
      word_arr[left_pointer] = word_arr[right_pointer]
      word_arr[right_pointer] = temp

      left_pointer += 1
      right_pointer -=1
  end
  words_arr.join(' ')
end
