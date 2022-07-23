# frozen_string_literal: true

# 編號：003
# 程式語言：Ruby
# 題目：完成函數的內容，把陣列裡的 0 都移到最後面
# 範例：

def move_zeros_to_end(arr)
  # 程式碼寫在這裡
  arr.reject { |x| x.eql? 0 } + arr.select { |x| x.eql? 0 }
end

list = [false, 1, 0, -1, 2, 0, 1, 3, 'a']
result = move_zeros_to_end(list)
p result # 印出 [false, 1, -1, 2, 1, 3, "a", 0, 0]
