def number_maker
""" generate a random number between 1 and 5 """
  rand(1..5)
end

def multiplier(a,b)
  """ multiplies 2 numbers """
  a * b
end

puts multiplier(number_maker, number_maker)

puts "Listen to the hamster. On a scale of 1-10, how loud is it?"
loudness = gets.chomp.to_i
# VERIFY INPUT IS A NUMBER 1-10
until loudness.between?(1,10)
# until (1..10) === loudness
	puts puts "I'm sorry, give me a number on a scale of 1-10"
	loudness = gets.chomp.to_i
end
puts loudness

# puts "How many years old do you think this hamster is? Put 0 if under 1 year old. Leave blank if unsure."
# age = gets.chomp.to_i
# Make sure that input is an integer or nil
# until (1..5) === age
# until age.between?(1,5)
#	puts "Please enter a year age between 0 and 5"
#	age = gets.chomp.to_i
# end
# puts age
