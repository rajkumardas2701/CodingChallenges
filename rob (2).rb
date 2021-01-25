def rob(nums)
    n = nums.length
    if n == 0
        return 0
    end
    if n==1 
        return nums[0]
    end
    if n == 2
        return nums.max
    end
    dp = []
    dp[0] = nums[0]
    dp[1] = [nums[1], dp[0]].max
    p dp
    for i in 2..n-1
        p nums[i]
        p dp[i-2]
        p dp[i-1]
        dp[i] = [nums[i]+ dp[i-2], dp[i-1]].max
    end
    # p dp
    dp.last
    
end

nums = [2,7,9,3,1]

p rob(nums)