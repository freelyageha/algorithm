def get_sum(data, path)
  sum = 0
  path.each_with_index do |v, i|
    next if i >= (path.size - 1)
    sum += data[v][path[i+1]]
  end
  sum
end

def get_children (elements, element)
  elements.reject{ |e| e == element }
end

def tsp (data, elements, i, visited, path)
  if elements.size < 1
    p [path, get_sum(data, path)]
    return true
  end

  elements.each do |j|
    next if i == j
    children = get_children(elements, j)
    tsp(data, children, j, visited, (path << j))
    path.pop
  end
end

data = [
  [0, 20, 42, 35],
  [20, 0, 30, 34],
  [42, 30, 0, 12],
  [35, 34, 12, 0]
]
elements = (0..(data.size-1))
elements.each do |i|
  visited = {}
  path = []
  children = get_children(elements, i)
  tsp(data, children, i, visited, (path << i))
end
