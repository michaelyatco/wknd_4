# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module BasicArithmetic

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

module FancyArithmetic

   def square_root(number)
    Math.sqrt(number)
   end

end
 
class SimpleCalculator
  include BasicArithmetic
end

class FancyCalculator
  include BasicArithmetic, FancyArithmetic 
end

# Copy your driver code from the previous exercise below:
calc = SimpleCalculator.new
puts calc.add(2, 2)
puts calc.subtract(2, 2)
puts calc.multiply(2, 2)
puts calc.divide(2, 2)
# puts calc.square_root(4) - #breaks the program

fancycalc = FancyCalculator.new
puts fancycalc.add(2, 2)
puts fancycalc.subtract(2, 2)
puts fancycalc.multiply(2, 2)
puts fancycalc.divide(2, 2)
puts fancycalc.square_root(4)
