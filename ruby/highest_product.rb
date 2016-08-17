# question 3 on interview cake

def highest_product(array_of_ints)
  combinations = array_of_ints.combination(3).to_a

  highest = 0

  combinations.each do |set|
    product = set.inject(:*)
    if highest < product
      highest = product
    end
  end
  highest
end
