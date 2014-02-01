# Code for selection sort
# 35 students in our class
NUM_STUDENTS = 35
# Max grade of 100%
MAX_GRADE  = 100
num_compare = 0
arr = Array.new(NUM_STUDENTS)

# Randomly populate arr
for i in (0..NUM_STUDENTS - 1)
  # Maximum possible grade is 100%. 
  arr[i] = rand(MAX_GRADE + 1)
end

# Output current values of arr
puts "Input List:"
for i in (0..NUM_STUDENTS - 1)
  puts "arr[" + i.to_s + "] ==> " + arr[i].to_s
end

# Selection sort. Find the lowest number and move it to beginning

for i in (0..NUM_STUDENTS - 2)
  min_pos = i
  for j in (i + 1)..(NUM_STUDENTS - 1)
    num_compare = num_compare + 1
    if (arr[j] < arr[min_pos])
      min_pos = j
    end
  end
  # Knowing the min, swap with current first element at position i
  temp = arr[i]
  arr[i] = arr[min_pos]
  arr[min_pos] = temp
end

# Now output the sorted array
puts "Sorted List:"
for i in (0..NUM_STUDENTS - 1)
  puts "arr[" + i.to_s + "] ==> " + arr[i].to_s
end

puts "Number of Comparisons ==> " + num_compare.to_s