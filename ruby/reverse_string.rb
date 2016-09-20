#26 question on interview cake

def reverse_string(str)
  left_pointer = 0
  right_pointer = str.length - 1

  while left_pointer < right_pointer
    temp = str[left_pointer]
    str[left_pointer] = str[right_pointer]
    str[right_pointer] = temp

    left_pointer += 1
    right_pointer -= 1
  end
  str
end
