def top_k_frequent(nums, k)
  res = []
  # arr = []
  p freq = nums.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  # p arr = freq.select { |z, v|  }
  # for x in 1...k
  #   arr1
  # end
  # for x in 0...k
  #   res.push(freq[x][0])
  # end
  # res
  freq.key(2)
end

nums = [2,2,3,3,1,1,1]
# nums = [1,2]
k = 2

p top_k_frequent(nums, k)