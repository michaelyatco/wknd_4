# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

module WhizBangArithmetic
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

class SimpleCalculator
  include BasicArithmetic
end

class FancyCalculator
  include BasicArithmetic, FancyArithmetic
end

class WhizBangCalculator
  include BasicArithmetic, FancyArithmetic, WhizBangArithmetic
end

# Copy your driver code from the previous exercise and more below:
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

whizcalc = WhizBangCalculator.new
puts whizcalc.add(2, 2)
puts whizcalc.subtract(2, 2)
puts whizcalc.multiply(2, 2)
puts whizcalc.divide(2, 2)
puts whizcalc.square_root(4)
puts whizcalc.hypotenuse(1, 2)
puts whizcalc.exponent(2, 3)