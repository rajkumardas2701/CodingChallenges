# As described here, https://www.hackerrank.com/challenges/repeated-string/problem?h_r=internal-search

def repeatedString(s, n)
  num_s_to_repeat = n / s.length
  len_sub_s = n % s.length
  arr_ch = s.split("")
  in_single_s = 0
  arr_ch.each do |ch|
    if ch == 'a'
      in_single_s += 1
    end
  end
  total = num_s_to_repeat * in_single_s

  if len_sub_s == 0
    return total
  else
    sub_s = arr_ch[0...len_sub_s]
    sub_s.each do |sub_ch|
      if sub_ch == 'a'
        total += 1
      end
    end
  end
  return total
end
  
s = 'epsxyyflvrrrxzvnoenvpegvuonodjoxfwdmcvwctmekpsnamchznsoxaklzjgrqruyzavshfbmuhdwwmpbkwcuomqhiyvuztwvq'
n = 549382313570
# s= 'aaba'
# n = 10
  
puts result = repeatedString(s, n)

