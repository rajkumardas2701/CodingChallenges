def rob(nums)
    odd = [];
    even = [];
    for i in 0...nums.length
      if i % 2 == 0
          even << nums[i];
      else 
          odd << nums[i]
      end
    end
    # p even.reduce(0) { |sum, num | sum + num }
    # p odd.reduce(0) { |sum, num | sum + num }
    return even.reduce(0) { |sum, num | sum + num } > odd.reduce(0) { |sum, num | sum + num } ? even.reduce(0) { |sum, num | sum + num } : odd.reduce(0) { |sum, num | sum + num }
end
nums = [1,2,3,1]
p rob(nums);