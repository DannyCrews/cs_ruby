# initialize array and loop values
arr = [[73, 98, 86, 61, 96],
       [60, 90, 96, 92, 77],
       [44, 50, 99, 65, 10]]
row = 0
column = 0

# loop over each row
while (row < arr.size)
  puts "Row: " + row.to_s
  # loop over each column
  while (column < arr[row].size)
    # print the item at position row x column
    puts arr[row][column]
    column += 1
  end
  # reset column, advance row
  column = 0
  row += 1
end