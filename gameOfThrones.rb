def gameOfThrones(s)
  len = s.length
  # s.each_char {|c| s.count(c)}

  p uniArr = s.split('').uniq

  p res = uniArr.collect {|k| [k,s.count(k)] }
  count = 0
  for i in 0...res.length
    if res[i][1] == 1
      count += 1
    end
  end

  if count >= 2
    return 'NO'
  else

  end 

end

# s = "aaabbbb"
s = "aaccdbbb"
abcdbcba

p gameOfThrones(s)