def contains_duplicate(nums)
  nums.uniq.length < nums.length ? true : false
end

nums = [1,1,1,3,3,4,3,2,4,2]

p contains_duplicate(nums)