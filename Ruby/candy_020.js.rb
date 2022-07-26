# frozen_string_literal: true

# 編號：CANDY-020
# 程式語言：Ruby
# 題目：檢查字串的 x 跟 o 的數量是不是一樣多，不分大小寫

def xxoo(str)
  str.count('oO') == str.count('xX')
end

p xxoo('ooxx') # true
p xxoo('xxoo') # true
p xxoo('xxooo') # false
p xxoo('xoox') # true
p xxoo('ooAA') # false
p xxoo('xoXoA') # true
