#40 interview cake

require 'set'

def find_repeat(numbers)
    numbers_seen = Set.new
    numbers.each do |number|
        if numbers_seen.include? number
            return number
        else
            numbers_seen.add(number)
        end
    end

    # whoops--no duplicate
    raise Exception, 'no duplicate!'
end
