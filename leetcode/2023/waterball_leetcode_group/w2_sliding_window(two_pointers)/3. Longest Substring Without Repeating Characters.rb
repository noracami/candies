# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substring = {}
  left = 0

  s.size.times.inject(0) { |memo, idx|
    left = [left, substring[s[idx]] + 1].max if substring[s[idx]]
    substring[s[idx]] = idx
    [memo, idx - left + 1].max
  }
end

TestCase = [
  ["abcabcbb", 3],
  ["bbbbb", 1],
  ["pwwkew", 3],
  ["", 0],
  [" ", 1],
  ["abcdjfkldsafjbnncvbjkzuijwhuaeoijajkweaae", 9]
]

TestCase.each { |c, ans| p length_of_longest_substring(c) == ans }
