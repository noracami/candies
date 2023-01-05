# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  frequency = Hash.new(0)
  left = 0

  s.size.times do |right|
    frequency[s[right]] += 1
    
    if right - left + 1 - frequency.values.max > k
      frequency[s[left]] -= 1
      left += 1
    end
  end

  s.size - left
end

TestCase = [
  [["ABAB", 2], 4],
  [["AABABBA", 1], 4],
  [["ABAB", 0], 1],
  [["NWTCOFHRWEDFANFXZMYRKXSDUVKTTMSYVTPPVMUYTMENHRXJZO", 10], 14],
  [["BAAA", 0], 3],
  [["A", 0], 1]
]

TestCase.each { |c, ans| p character_replacement(*c) == ans }
