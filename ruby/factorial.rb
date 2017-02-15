# takes a positive integer and multiplies it by all smaller numbers.

eg = 7

def factorial(int)
  result = 1

(1..int).each do |value|
    result = result * value
  end
  result
end

puts factorial(6)
