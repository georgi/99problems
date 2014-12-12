# Run this file and make the assertions work!

def assert(expected)
  actual = yield

  if expected == actual
    print "."
  else
    raise "#{actual.inspect} was not #{expected.inspect}"
  end
end

# VERY EASY

# Return the last element of an array
def last(array)
end

# Return the last two elements of an array
def last_two(array)
end

# Return the element at position i
def at(array, i)
end

# Return the length of an array without using Array#size
def length(array)
end


# EASY

# Reverse the array without using Array#reverse
def rev(array)
end

# Check if an array is a palindrome
def palindrome?(array)
end


# MEDIUM

# Flatten an array without using Array#flatten
def flatten(array)
end

# Eliminate consecutive duplicates of list elements.
def compress(array)
end


# HARD

# Pack consecutive duplicates into subarrays without using Array#group_by.
def pack(array)
end


assert(4)     { last [1,2,3,4] }
assert([3,4]) { last_two [1,2,3,4] }
assert(2)     { at [1,2,3,4], 1 }
assert(4)     { length [1,2,3,4] }

assert([3,2,1]) { rev [1,2,3] }
assert(true)    { palindrome? [1,2,3,2,1] }

assert([1,2,3,4,5]) { flatten [1,[2,3],[4,[5]]] }
assert([1,2,3,4,5]) { compress [1,1,2,3,3,3,4,5] }


assert([[1,1], [2], [3,3,3], [4], [5]]) { pack [1,1,2,3,3,3,4,5] }
