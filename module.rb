module Calc
  def add
    @result = {"add" => @values.inject {|result, item| result.to_i + item.to_i}}
  end

  def subtract
    @result = {"subtract" => @values.inject {|result, value| result.to_i - value.to_i}}
  end

  def multiply
    @result = {"multiply" => @values.inject {|result, value| result.to_i * value.to_i}}
  end

  def divide
    @result = {"divide" => @values.inject {|result, value| result.to_f / value.to_i}}
  end
end

class Operator
  attr_reader :result
  attr_reader :values
  def initialize(string)
    @values = string.split(" ")
  end
  include Calc

  def pre(result)
    puts "#{@values} #{@result.each {|operation, value| puts "#{operation} #{value}"}}"
  end
end

quiz = Operator.new("12 33 2 88 5 9")

p quiz.values
quiz.add.each {|operation, result| puts "#{operation}: #{result}"}
quiz.subtract.each {|operation, result| puts "#{operation}: #{result}"}
quiz.multiply.each {|operation, result| puts "#{operation}: #{result}"}
quiz.divide.each {|operation, result| puts "#{operation}: #{result}"}
