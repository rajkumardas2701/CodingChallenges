def is_anagram(s, t)
 f_a = s.split("").sort
 s_a = t.split("").sort

 if f_a == s_a
    return true
 else
    return false
 end
end

# s = "anagram"
# t = "nagaram"

s = "rat"
t = "car"

p is_anagram(s, t)