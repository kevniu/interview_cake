# question 43 on interview cake
# n log n
def merge_sorted_arrays(arr1, arr2)
  return (arr1 + arr2).sort
end

def merge_arrays(my_array, alices_array)
  
    merged_array_size = my_array.length + alices_array.length
    merged_array = [nil] * merged_array_size

    current_index_alices = 0
    current_index_mine = 0
    current_index_merged = 0

    while current_index_merged < merged_array_size
        first_unmerged_alices = alices_array[current_index_alices]
        first_unmerged_mine = my_array[current_index_mine]

        # case: next comes from my array
        if first_unmerged_mine < first_unmerged_alices
            merged_array[current_index_merged] = first_unmerged_mine
            current_index_mine += 1

        # case: next comes from alice's array
        else
            merged_array[current_index_merged] = first_unmerged_alices
            current_index_alices += 1
        end

        current_index_merged += 1
    end

    return merged_array
end
