# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  freq_p = Hash.new(0)
  res = []
  i, j = 0, 0

  p.each_char { |char| freq_p[char] += 1 }

  while j < s.size
    if freq_p[s[j]] > 0
      freq_p[s[j]] -= 1
      res << i if j + 1 - i == p.size
      j += 1
    else
      freq_p[s[i]] += 1
      i += 1
    end
  end

  res
end

TestCase = [
  [["cbaebabacd","abc"], [0,6]],
  [["abab","ab"], [0,1,2]],
]

TestCase.each { |c, ans| p find_anagrams(*c) == ans }
