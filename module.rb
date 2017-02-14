module Calc
  def add
    @result = {"Add" => @values.inject {|result, item| result.to_i + item.to_i}}
  end

  def subtract
    @result = {"Subtract" => @values.inject {|result, value| result.to_i - value.to_i}}
  end

  def multiply
    @result = {"Multiply" => @values.inject {|result, value| result.to_i * value.to_i}}
  end

  def divide
    @result = {"Divide" => @values.inject {|result, value| result.to_f / value.to_i}}
  end
end

class Operator
  attr_reader :result
  attr_reader :values
  def initialize(string)
    @values = string.split(" ")
  end
  include Calc

  def display_results(result)
    result.each {|operation, result| "#{operation} operation produced: #{result}"}
  end
end

=begin
quiz = Operator.new("12 33 2 88 5 9")

puts "The numbers are: " + quiz.values.join(" ")
quiz.display_results(quiz.add)
quiz.display_results(quiz.subtract)
quiz.display_results(quiz.multiply)
quiz.display_results(quiz.divide)
=end
