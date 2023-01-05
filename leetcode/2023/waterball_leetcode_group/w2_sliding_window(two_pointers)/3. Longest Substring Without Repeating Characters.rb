# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substring = {}
  s = s.chars.zip(0..)

  s.inject(0) { |memo, each_with_index|
    letter, idx = each_with_index

    if substring[letter]
      substring = s[substring[letter] + 1, idx - substring[letter]].to_h
    else
      substring[letter] = idx
    end

    [memo, substring.size].max
  }
end
