def merge(left, right)
  left_index = 0
  right_index = 0
  left_count = left.size
  right_count = right.size
  sorted = []

  while left_index < left_count && right_index < right_count
    if left[left_index] < right[right_index]
      sorted << left[left_index]
      left_index += 1
    else
      sorted << right[right_index]
      right_index += 1
    end
  end

  if left_index == left_count
    sorted += right[right_index..right_count]
  elsif right_index == right_count
    sorted += left[left_index..left_count]
  end

end


def merge_sort data
  size = data.length
  return data if size < 2

  mean_index = (size - 1) / 2

  left = merge_sort(data[0..mean_index])
  right = merge_sort(data[(mean_index + 1)..(size-1)])
  merge(left, right)
end


data = [10,9,3,2,5,6,1,7,8,4]
p merge_sort(data)
