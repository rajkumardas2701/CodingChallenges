def product_except_self(nums)
  ans = []
  size = nums.size
  prefix = nums.clone
  (1...size).each{|i| prefix[i] *= prefix[i-1]}
  suffix = nums.clone
  (0...size-1).reverse_each{|i| suffix[i] *= suffix[i+1]}
  (0...size).each{|i|
      left, right = 1,1
      left = prefix[i-1] if i > 0
      right = suffix[i+1] if i < size - 1
      ans.push(left*right)
  }
  ans
end

# nums = [1, 2, 3, 4]
nums = [2,2]

p product_except_self(nums)