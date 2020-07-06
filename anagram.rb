def anagram(s)
  return -1 if s.length.odd?
  first_half = s[0, (s.length/2)]
  second_half = s[(s.length/2)..-1]
  first_arr = first_half.split("")
  second_arr = second_half.split("")

  second_arr.each do |ch|
    for i in 0..first_arr.length
      if ch == first_arr[i]
        first_arr.delete_at(i)
        break
      end
    end
  end
first_arr.length
end

puts anagram("abc")