# 編號：006
# 程式語言：Ruby
# 題目：找出在數字陣列裡跟其它元素不一樣的值
# 範例：

def find_different(numbers)
  # 實作寫在這裡
  if numbers.count(numbers.min) == 1
    numbers.min
  else
    numbers.max
  end
end

p find_different([1, 1, 1, 1, 3, 1, 1, 1]) # 印出 3
p find_different([2, 2, 2, 4, 2, 2]) # 印出 4
p find_different([8, 3, 3, 3, 3, 3, 3, 3]) # 印出 8
