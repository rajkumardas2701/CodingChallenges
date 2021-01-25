def find_duplicate(nums)
  array = []
  nums.each do |n|
      if !array.include?(n)
          array << n
      elsif array.include?(n)
          return n
      end
  end
end

nums = [1, 4, 2, 4, 2]

p find_duplicate(nums)