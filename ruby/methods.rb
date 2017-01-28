def number_maker
""" generate a random number between 1 and 5 """
  rand(1..5)
end

def multiplier(a,b)
  """ multiplies 2 numbers """
  a * b
end

puts multiplier(number_maker, number_maker)

volume = gets.chomp.to_i
#  while (volume < 1) || (volume > 10)
#    puts "Invalid answer. Please enter a number between 1 and 10."
#    volume = gets.chomp.to_i
#  end
  puts volume

var = gets.chomp
puts var.to_i
