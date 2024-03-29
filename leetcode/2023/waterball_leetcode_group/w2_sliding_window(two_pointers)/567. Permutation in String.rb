# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  length = s1.size
  freq_s1, freq_s2 = Hash.new(0), Hash.new(0)
  (0...length).each { |idx|
    freq_s1[s1[idx]] += 1
    freq_s2[s2[idx]] += 1
  }

  (0..(s2.size - length)).each { |left|
    return true if freq_s1 == freq_s2

    freq_s2[s2[left]] -= 1
    freq_s2.delete(s2[left]) if freq_s2[s2[left]] == 0
    freq_s2[s2[left + length]] += 1
  }

  false
end

TestCase = [
  [["ab", "eidbaooo"], true],
  [["ab", "eidboaoo"], false],
  [["ab", "ab"], true],
  [["a", "a"], true],
]

TestCase.each { |c, ans| p check_inclusion(*c) == ans }
