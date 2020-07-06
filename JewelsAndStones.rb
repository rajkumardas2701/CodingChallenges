def num_jewels_in_stones(j, s)
  jewels = j.split("")
  stones = s.split("")
  count = 0
    stones.each do |ston|
      jewels.each do |jew|
       if ston == jew
        count += 1
       end
      end        
    end
  return count
end

J = "a"
S = "AasaajsBBaA"
puts num_jewels_in_stones(J, S)