#21 interview cake, find unique id in an array of duplicates

def find_unique_delivery_id(delivery_ids)

  ids_to_occurrences = {}

  delivery_ids.each do |delivery_id|
      if ids_to_occurrences.include? delivery_id
          ids_to_occurrences[delivery_id] += 1
      else
          ids_to_occurrences[delivery_id]  = 1
      end
  end

  ids_to_occurrences.each do |delivery_id, occurrences|
      return delivery_id if occurrences == 1
  end

end

def find_unique_delivery_id(delivery_ids)

  unique_delivery_id = 0

  delivery_ids.each do |delivery_id|
      unique_delivery_id ^= delivery_id
  end

  return unique_delivery_id
end
