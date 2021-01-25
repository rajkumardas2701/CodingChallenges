def max_profit(prices)
    # profit = 0
    # while prices.length > 1
    #     max = prices.each_with_index.max
    #     min = prices.each_with_index.min
    #     if max[1] > min[1]
    #         return profit = max[0] - min[0]
    #     elsif max[1] < min[1] 
    #         prices.delete_at(min[1])
    #     else
    #         prices.delete_at(max[1])
    #     end
    # end
    # return profit

    return 0 if prices.empty?
    
    max_profit = 0
    min_price = prices[0]
    
    for i in (1..prices.length - 1)
        min_price = [min_price, prices[i-1]].min
        max_profit = [max_profit, prices[i] - min_price].max
    end
    
    return max_profit
end

prices = [4, 2]
# prices = [3, 4, 7, 1]

# prices = [7,1,5,3,6,4]

p max_profit(prices)