# 編號：007
# 程式語言：Ruby
# 題目：在某個數字陣列裡，可能藏有某個不合群的奇數或偶數，試著找出它！
# 範例：

def find_some_different(numbers)
  # 實作寫在這裡
  odds = numbers.select(&:odd?)
  evens = numbers.select(&:even?)
  odds.size < evens.size ? odds.pop : evens.pop
end

p find_some_different([2, 4, 0, 100, 4, 11, 2602, 36]) # 印出 11
p find_some_different([160, 3, 1719, 19, 11, 13, -21]) # 印出 160
