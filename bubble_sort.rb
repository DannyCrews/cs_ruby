# Code for bubble sort
NUM_STUDENTS = 35
# Max grade of 100%
MAX_GRADE = 100
num_compare = 0
arr = Array.new(NUM_STUDENTS)

# Randomly put some final exam grades into arr

for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1)
end

# Output randomly generated array
puts "Input Array:"
for i in (0..NUM_STUDENTS - 1)
  puts "arr[" + i.to_s + "] ==> " + arr[i].to_s
end

# Now let's use bubble sort. Swap pairs as we loop
# through the array from the beginning to 2nd to last
for i in (0..NUM_STUDENTS - 2)
  # from arr[i + 1] to the end of the array
  for j in ((i + 1)..NUM_STUDENTS - 1)
    num_compare = num_compare + 1
    # if the first value is greater than the second value, swap them
    if (arr[i] > arr[j])
      temp = arr[j]
      arr[j] = arr[i]
      arr[i] = temp
    end
  end
end

# Now output the sorted array
puts "Sorted Array:"
for i in (0..NUM_STUDENTS - 1)
  puts "arr[" + i.to_s + "] ==> " + arr[i].to_s
end
puts "Number of Comparisons ==> " + num_compare.to_s