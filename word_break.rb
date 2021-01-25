def word_break(s, dict)
  return true if s == ''
  dict.each do |word|
    next unless word == s[0...word.size]
    return true if word_break(s[word.size..-1], dict)
    dict.delete(word)
  end
  false
end

# s = "leetcode"
# wordDict = ["leet", "code"]

# s = "applepenapple"
# word_dict = ["apple", "pen"]

s = "cars"
word_dict = ["car","ca","rs"]
# word_dict = ["cats", "dog", "sand", "and", "cat"]

p word_break(s, word_dict)