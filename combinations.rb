# Write a method combinations which takes two arrays of strings and returns an array
# with all of the combinations of the items in them, listing the first items first.

# > combinations([“on”,”in”],[“to”,”rope”])
# => [“onto”,”onrope”,”into”,”inrope”]

def combinations(array_1, array_2)
  result = []
  array_1.each do |string_1|
    array_2.each do |string_2|
      result << string_1 + string_2
    end
  end
  result
end

puts combinations(["on","in"],["to","rope"])