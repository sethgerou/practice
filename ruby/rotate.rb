array = [1,2,3,4,5]
n = 3

n.times do
  array.unshift(array.pop)
  p array
end
