def can_jump(nums)
  max_jump = 0
  nums.size.times do |i|
    p i
    p max_jump
    return false if max_jump < i
    max_jump = [max_jump, i + nums[i]].max
    p max_jump
    p '-------------------'
  end
  return true
end

# nums = [3,2,1,0,4]
# nums = [2, 5, 0, 0]
nums = [2, 1, 0, 0]

p can_jump(nums)