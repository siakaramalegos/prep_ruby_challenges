# Write a method uniques which takes an array of items and returns the array
# without any duplicates. Don’t use Ruby’s uniq method!

# uniques([1,5,”frog”, 2,1,3,”frog”])
# => [1,5,”frog”,2,3]

def uniques items
  # don't want to compare the first item so start at 1
  index = 1
  # changed from .each and .each_with_index because removing items was mixing up the item and index
  while index + 1 <= items.length do
    range_max = index - 1
    if items[0..range_max].include?(items[index])
      items.delete_at(index)
    else
      index += 1
    end
  end
  items
end

puts uniques([1,5,"frog", 2,1,3,"frog"])