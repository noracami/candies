# @param {String} s
# @param {Integer} k
# @return {Integer}
def minimum_partition(s, k)
  left, len, ans = 0, 1, 0
  while left < s.size
    if s[left, len].to_i <= k
      if left + len == s.size
        # ans += [s[left, len].to_i]
        ans += 1
        break
      end
      len += 1
    elsif len == 1
      ans = -1
      break
    else
      # ans += [s[left, len - 1].to_i]
      ans += 1
      left += len - 1
      len = 1
    end
  end
  ans
end
