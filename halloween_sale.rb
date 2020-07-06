def howManyGames(p, d, m, s)
  return 0 if s < p
  exp = p
  count = 1
  s -= p
  per_exp = p
  # loop = 1
  while s >= m && ((per_exp-d) >= m)
    # puts "loop #{loop}"
    if s > m
      per_exp -= d
      exp += per_exp
      s -= per_exp
      # puts "Remaining budget #{s}"
      count += 1   
      # loop += 1 
    else
      puts "in else"
      exp += m
      s -= m
      count += 1
      # loop += 1 
    end 
  end
count
end

puts howManyGames(20, 3, 6, 80)