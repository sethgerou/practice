customer_toppings = []

topping_arr = ["onions","pepperoni","sausage","garlic","extra cheese","olives","chicken","pineapple"]

price_hash = {small: "$15.95",medium: "$17.95",large: "$22.95",extreme: "$47.95"}

topping_arr.each do
  |topping| puts "Would you like #{topping}? (y/n)"
  reply = gets.chomp
  if reply == "y"
    customer_toppings << topping
  end
end

puts "would you like 'small', 'medium', 'large', or 'extreme'?"
size_choice = gets.chomp

puts "Building pizza..."
customer_toppings.each {|topping| puts "#{topping.capitalize}"}
puts "Your #{size_choice} pizza will cost #{price_hash[size_choice.to_sym]}."
