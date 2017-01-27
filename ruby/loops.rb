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
cnt3 = 0
until cnt3 == 5
  puts "cnt3: #{cnt3}"
  cnt3 += 1
end

cnt4 = 0
begin
  puts "cnt4: #{cnt4}"
  cnt4 += 1
end until cnt4 == 5

# break
for n in 0..5
  puts "Value of #{n}"
  if n == 3
    break
  end
end

(0..5).each do |a|
  puts "#{a} - value"
end

# redo
# redo - redoes the iteration - does not check the condition - creates infinite loops

# retry
# retry - retries the condition - creates infinite loops
puts "How are you feeling?"
user_input = gets.chomp

case user_input
when "good"
  puts "Glad to hear you're feeling #{user_input.upcase}."
when "sad"
  puts "sorry to hear you're feeling #{user_input.upcase}."
when "mad"
  puts "Calm down!  There's no cause to be #{user_input.upcase}."
when "scared"
  puts "Don't be silly, there's no reason to be #{user_input}."
else
  puts "meh!"
end
