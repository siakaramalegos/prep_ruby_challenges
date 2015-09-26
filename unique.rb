# Write a method uniques which takes an array of items and returns the array
# without any duplicates. Don’t use Ruby’s uniq method!

# uniques([1,5,”frog”, 2,1,3,”frog”])
# => [1,5,”frog”,2,3]

def uniques items
  items.each_with_index do |item, index|
    next if index == 0
    range_max = index -1
    if items[0..range_max].include?(item)
      items.delete_at(index)
    end
  end
  items
end

puts uniques([1,5,"frog", 2,1,3,"frog"])