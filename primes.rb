# initialize counter
i = 1

# i: [0, 100]
while (i <= 100)
  # initialize prime flag
  prime_flag = true
  j = 2
  # Test divisability of i from [0, i/2]
  while (j <= i / 2)
    if (i % j == 0)
      prime_flag = false
    end
    j += 1
  end

  if prime_flag
    puts "Prime ==> " + i.to_s
  end
  i += 1
end