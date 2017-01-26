# While Loop
counter = 0

while counter < 15 do
  puts counter
  counter += 1
end

# alternate syntax
counter2 = 0

begin
   puts "counter 2: #{counter2}"
   counter2 += 1
end while counter2 < 15

# For Loop
for n in 0..5
  puts "N: #{n}"
  end

# alternately
(0..5).each do |n|
  puts "n: #{n}"
end

# Until Loop

# break
# redo
# retry
