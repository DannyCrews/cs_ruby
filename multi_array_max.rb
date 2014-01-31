# initialize the array and index/score variables
arr = [[73, 98, 86, 61, 96],
       [60, 90, 96, 92, 77],
       [44, 50, 99, 65, 10]]
row = 0
column = 0
maxscore = 0
maxrow = 0

# for each row
while (row < arr.size)
  # for each column
  while (column < arr[row].size)
    # update score variables
    if (arr[row][column] > maxscore)
      maxrow = row
      maxscore = arr[row][column]
    end
    # increment column
    column += 1
  end
  # reset column, increment row
  column = 0
  row += 1
end

#output name and high score information
if maxrow == 0
  puts "Geraldo has the highest score."
elsif maxrow == 1
  puts "Brittany has the highest score."
elsif maxrow == 2
  puts "Michael has the highest score."
else
  puts "Something didn't work correctly."
end
puts "The high score was: " + maxscore.to_s