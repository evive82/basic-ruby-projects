def bubble_sort(array)
  still_sorting = false
  array.each_with_index do |number, index|
    next_number = array[index + 1]
    next if index == array.length - 1 || next_number >= number

    array[index + 1] = number
    array[index] = next_number
    still_sorting = true
  end
  still_sorting ? bubble_sort(array) : array
end
