# Write a method is_prime? which takes in a number and returns true if
# it is a prime number.

# > is_prime?(7)
# => true
# > is_prime?(14)
# => false

# You didn't say don't use this and part of programming is to look for the easier/best
# solution.
require 'prime'

def is_prime? number
  number.prime?
end

puts is_prime?(7)
puts is_prime?(14)