# frozen_string_literal: true

# 編號：CANDY-001
# 程式語言：Ruby
# 題目：找出陣列裡最小的兩個值的總和
# 例如：
#   [15, 28, 4, 2, 43] 印出 6
#   [23, 71, 33, 82, 1] 印出 24

def sum_of_smallest_values(arr)
  arr.min(2).sum
end

list1 = [19, 5, 42, 2, 77]
list2 = [23, 15, 59, 4, 17]

p sum_of_smallest_values(list1) # 印出 7
p sum_of_smallest_values(list2) # 印出 19
