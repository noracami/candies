# @param {String[]} words
# @return {String}
def odd_string(words)
  diff = words.map { |w|
    w_points = w.codepoints
    l = w_points.size - 1
    w_points.map.with_index { |n, idx|
      idx != l ? w_points[idx + 1] - n : nil
    }.compact
  }.zip words
  diff.find { |e| diff.map(&:first).count(e[0]) == 1 }.last
end

kk = ["abm","alm","bcn"]
p odd_string(kk)
p "alm"
