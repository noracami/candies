# 編號：CANDY-014
# 程式語言：Ruby
# 題目：把鄰近的重複值去除，但仍照原本的順序排序
# 範例："AAABBBDDDAABBBCC" -> ['A', 'B', 'D', 'A', 'B', 'C']

def unique_order(sequence)
  sequence.size
          .times
          .map { |i| sequence[i] }
          .join
          .squeeze
end

p unique_order("AABCC") # ['A', 'B', 'C']
p unique_order("AAABBBCCBCC") # ['A', 'B', 'C', 'B', 'C']
p unique_order([1, 2, 1, 2, 1]) # [1, 2, 1, 2, 1]
p unique_order([1, 1, 1, 2, 2, 2, 1]) # [1, 2, 1]
