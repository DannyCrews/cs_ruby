# code for insertion sort
# Declare useful constants
NUM_STUDENTS = 35
MAX_GRADE = 100
num_compare = 0
arr = Array.new(NUM_STUDENTS)

# Randomly populate arr

for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1)
end

# Output randomly generated array
puts "Input Array:"
for i in (0..NUM_STUDENTS - 1)
  puts "arr[" + i.to_s + "] ==>" + arr[i].to_s
end

# Now let's use an insertion sort
# Insert the lowest number in the array at the right place
for i in (0..NUM_STUDENTS - 1)
  # Now start at the current bottom and move toward arr[i]
  j = i
  done = false
  while((j > 0) and ! done)
    num_compare = num_compare + 1
    # If the bottom value is lower than values above it, swap until
    # it lands in a place where it's not lower than the next item above it
    if (arr[j] < arr[j - 1])
      temp = arr[j - 1]
      arr[j - 1] = arr[j]
      arr[j] = temp
    else
      done = true
    end
    j = j - 1
  end
end

# Now output the sorted array
puts "Sorted Array:"
for i in (0..NUM_STUDENTS - 1)
  puts "arr[" + i.to_s + "] ==> " + arr[i].to_s
end
puts "Number of Comparisons ==> " + num_compare.to_s