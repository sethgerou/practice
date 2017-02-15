# accepts an array of integers and a sum integer.
# steps: evalute whether any two integers in the array add up to the integer.
# is this easier to solve - for each item in the array, does integer minus array item = any other array item?
# returns true or false

array = [rand(10),rand(10),rand(10),rand(10),rand(10),rand(10)]
int = 11
test = false

array.each do |number|
  (array.index(number)+1..(array.length-1)).each do |position|
    puts "#{number} + #{array[position]} = #{number + array[position]}"
      if number + array[position] == int
        test = true
      end
  end
end

p array
puts test
