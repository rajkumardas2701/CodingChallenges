t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i

  def fibonacci(n)
    if n == 10
      return 10
    else 
      prev_fibo = 5
      sum_fibo = 8
      next_sum = 0
      temp = 0
      even_valued = [2, 8]
      while(sum_fibo < n)
        i = 0
        while (i < 3)
          temp = prev_fibo + sum_fibo
          i += 1
          prev_fibo = sum_fibo
          sum_fibo = temp
        end
        if (sum_fibo < n)
          even_valued.push(sum_fibo)
        end
      end
      res = 0
      even_valued.each {|a| res+=a}
      return res
    end
  end
  p fibonacci(1000)
end