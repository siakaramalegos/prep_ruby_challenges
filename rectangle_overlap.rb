# Write a method overlap which takes two rectangles defined by the coordinates of
# their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether
# they overlap. You can assume all coordinates are positive integers.

# It doesn't count as overlapping if their edges touch but they do not otherwise
# overwrite each other.

# > overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
# => true
# > overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
# => false

def overlap(rectangle_1, rectangle_2)
  # check second inside first - check x's then y's
  (rectangle_1[0][0] <= rectangle_2[0][0] &&
     rectangle_2[0][0] < rectangle_1[1][0] &&
     rectangle_1[0][1] <= rectangle_2[0][1] &&
     rectangle_2[0][1] < rectangle_1[1][1]) ||
  # check first inside second
  (rectangle_2[0][0] <= rectangle_1[0][0] &&
     rectangle_1[0][0] < rectangle_2[1][0] &&
     rectangle_2[0][1] <= rectangle_1[0][1] &&
     rectangle_1[0][1] < rectangle_2[1][1])
end

# Test cases
puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) # true
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) # false
puts overlap( [ [0,0],[3,3] ], [ [0,1],[3,4] ] ) # true
puts overlap( [ [0,1],[3,4] ], [ [0,0],[3,3] ] ) # true
puts overlap( [ [1,1],[4,5] ], [ [0,0],[3,3] ] ) # true
puts overlap( [ [1,1],[3,2] ], [ [0,0],[1,4] ] ) # false