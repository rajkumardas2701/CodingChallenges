def single_number(nums)
  a = 0
  for i in nums
      p a = a ^ i
  end
  return a
end

nums = [1,2,1,2,4]

single_number(nums)