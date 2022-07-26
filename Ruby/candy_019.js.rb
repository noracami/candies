# frozen_string_literal: true

# 編號：CANDY-019
# 程式語言：Ruby
# 題目：檢查是否為某個數字的平方數

def square?(num)
  num >= 0 ? Integer.sqrt(num)**2 == num : false
end

p square?(0) # true
p square?(4) # true
p square?(5) # false
p square?(100) # true
p square?(-4) # false
p square?(-1) # false
