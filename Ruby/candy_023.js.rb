# frozen_string_literal: true

# 編號：CANDY-023
# 程式語言：Ruby
# 題目：回傳陣列中兩個數字的和為指定值的索引值，例如陣列 [1, 3, 2, 8, 11]
#      指定值 9，而 9 可由陣列中的 1 跟 8 加總而成，所以回傳 [0, 3]：

def two_sum(array, target)
  # 實作寫在這裡
  seen = {}
  array.each.with_index do |num, idx|
    return [seen[target - num], idx] if seen.key?(target - num)

    seen[num] = idx
  end
end

p two_sum([1, 3, 2, 8, 11], 9) # 印出 [0, 3]
p two_sum([5, 7, 9, 8, 2], 11) # 印出 [2, 4]
