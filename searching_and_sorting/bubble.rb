def bubble_sort data
  data_size = data.size - 1
  (1..data_size).each_with_index do |fd, i|
    flag = true
    data.each_with_index do |sd, j|
      break if data_size < j+1
      if sd > data[j+1]
        data[j], data[j+1] = data[j+1], data[j]
        flag = false
      end
    end

    return data if flag
  end
end

data = [10,9,3,2,5,6,1,7,8,4,4,9]
p bubble_sort(data)
