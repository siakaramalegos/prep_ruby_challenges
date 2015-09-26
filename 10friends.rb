# 10 friends are sitting in a circle around a table and decide to play a new game.
# In it, they count up through the numbers from 1 to 100. The first person says "1",
# the second says "2" and so on... but with a few catches:

# Whenever the number is divisible by 7, they switch directions. So person 6 will
# say "6", person 7 will say "7", then person 6 again will say "8".
# Whenever the number is divisible by 11, they skip the next person.
# Your job is to pseudocode a program which will determine which player says the
# number 100. For this one, be as specific as possible to actually write out the
# logic of the procedure.

def correct_index(index)
  if index == -2
    index = 8
  elsif index == 10
    index = 0
  end
  index
end

friends = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count = 1
direction = 1
current_friend_index = 0
puts "friend #{friends[current_friend_index]} says #{count}, index is #{current_friend_index}, direction is #{direction}"

while count <= 100
  if count == 1
    count += 1
    next
  elsif count % 7 == 1 && count % 11 == 1
    # reverse and skip
    direction *= -1
    current_friend_index = correct_index(current_friend_index + direction * 2)
  elsif count % 7 == 1
    # reverse
    direction *= -1
    current_friend_index = correct_index(current_friend_index + direction)
  elsif count % 11 == 1
    # skip
    current_friend_index = correct_index(current_friend_index + direction * 2)
  else
    # continue
    current_friend_index = correct_index(current_friend_index + direction)
  end
  puts "friend #{friends[current_friend_index]} says #{count}, index is #{current_friend_index}, direction is #{direction}"
  count += 1
end
