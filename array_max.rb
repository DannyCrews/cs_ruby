# initialize array and loop values
arr = [73, 98, 86, 61, 96]
index = 0
max = 0

# loop over each element in the array
while (index < arr.size)
  if (arr[index] > max)
    max = arr[index]
  end
  index += 1
end

puts "Max ==> " + max.to_s