def quick_sort data
  size = data.size
  return data if size < 2

  pivot_index = size - 1
  pivot = data.last
  left_index = 0
  right_index = pivot_index - 1

  while left_index <= right_index
    if pivot < data[left_index]
      if data[right_index] < pivot
        data[left_index], data[right_index] = data[right_index], data[left_index]
        left_index += 1
        right_index -= 1
      else
        right_index -= 1
      end
    else
      left_index += 1
    end
  end

  partition_index = (left_index > right_index ? left_index : right_index)
  data[partition_index], data[pivot_index] = data[pivot_index], data[partition_index]
  left = quick_sort(data[0..(partition_index - 1)])
  right = quick_sort(data[partition_index..pivot_index])
  left + right
end

data = [10,9,3,2,5,6,1,7,8,4]
p quick_sort(data)
