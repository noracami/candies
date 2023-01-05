# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  substring = Hash.new(0)
  left, right = 0, 0
  res = 0
  base_letter_set = ['0', 0]

  while right < s.size
    # if current replace chars count > k
    # left++
    if substring[:size] > k
      # if left char is base_char
      # base char count --
      if s[left] == base_letter_set[0]
        base_letter_set[1] -= 1
      # or substring --
      # # consider if k is 0, substring will be empty
      else
        substring[s[left]] -= 1 if substring[s[left]] > 0
        substring[:size] -= 1 if substring[:size] > 0
      end

      puts "substring[:size] > k(#{k}), L++"
      left += 1
    # if current replace chars count <= k
    # right++
    else
      # if adding char is base_char
      # base char count ++
      if s[right] == base_letter_set[0]
        base_letter_set[1] += 1
      # or substring ++
      else
        substring[s[right]] += 1
        substring[:size] += 1
      end
      # if substring[adding_char].count > base char count
      #   adding_char -> new base_char
      #   base_char -> substring
      #   substring.count -= 1 because substring[adding_char].count - base char count = 1
      if substring[s[right]] > base_letter_set[1]
        tmp = [s[right], substring[s[right]]]
        substring.delete(s[right])
        substring[base_letter_set[0]] = base_letter_set[1]
        substring[:size] -= 1
        base_letter_set = tmp
      end

      # if current replace chars count <= k
      # right ++
      if substring[:size] <= k
        right += 1
        res = [res, right - left].max
      end
    end

    puts _ = {
      # left:,
      # right:,
      substring:,
      base_letter_set:,
      res:,
    }
    puts s
    print 'L'.prepend(' ' * left)
    if right - left == 0
      puts ''
      puts 'R'.rjust(right + 1, ' ')
    else
      puts 'R'.rjust(right - left, ' ')
    end
    puts ''
  end

  res
end

TestCase = [
  # [["ABAB", 2], 4],
  [["AABABBA", 1], 4],
  # [["ABAB", 0], 1],
  # [["NWTCOFHRWEDFANFXZMYRKXSDUVKTTMSYVTPPVMUYTMENHRXJZO", 10], 14],
]

TestCase.each { |c, ans| p character_replacement(*c) == ans }
