# frozen_string_literal: true

# 編號：CANDY-011
# 程式語言：Ruby
# 題目：找出一個數字陣列裡，出現奇數次數的數字
# 範例：[1, 1, 0]，0 只有出現 1 次
#      [5, 5, 8, 8, 8, 4, 4]，8 出現了 3  次

def find_odd_elm(numbers)
  numbers.inject(:^)
end
# inject(symbol) → object
# inject(initial_operand, symbol) → object
# inject {|memo, operand| ... } → object
# inject(initial_operand) {|memo, operand| ... } → object

p find_odd_elm([1, 1, 2]) # 印出 2
p find_odd_elm([5, 4, 2, 1, 5, 4, 2, 10, 10]) # 印出 1
p find_odd_elm([0, 1, 0, 1, 0]) # 印出 0
p find_odd_elm([1, 1, 2, -2, 5, 2, -1, -2, 5]) # 印出 -1
p find_odd_elm([20, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]) # 印出 5
