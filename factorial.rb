# Write a method factorial which takes a number and returns the product of
# every number up to the current number multiplied together.

# > factorial(5)
# => 120  # from 1*2*3*4*5

def factorial(number)
  result = 1
  number.times do |index|
    result *= (index + 1)
  end
  result
end

puts factorial(5)