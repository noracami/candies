# @param {String} s
# @param {Integer} k
# @return {Integer}
def take_characters(s, k)
  # [a]abaaaacaabc
  # [aa]baaaacaabc
  # [aab]aaaacaabc
  # a[ab]aaaacaabc
  # ...
  s_head = s.chars
  s_tail = []
  window = []
  counts = {
    a: s.count('a'),
    b: s.count('b'),
    c: s.count('c')
  }
  return -1 unless counts.all? { |key, value| value >= k }
  
  max_window_size = 0
  while !s_head.empty?
    if counts.all? { |key, value| value >= k }
      max_window_size = [max_window_size, window.size].max
      window << s_head.shift
      counts[window.last.to_sym] -= 1
    else
      s_tail << window.shift
      counts[s_tail.last.to_sym] += 1 if s_tail.last
    end
  end

  max_window_size = [max_window_size, window.size].max if counts.all? { |key, value| value >= k }
  s.size - max_window_size
end

p take_characters("aabaaaacaabc", 2) == 8
p take_characters("a", 0) == 0
p take_characters("a", 1) == -1
p take_characters("acbcc", 1) == 3
p take_characters("abca", 1) == 3
