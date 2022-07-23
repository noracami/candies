# frozen_string_literal: true

# 編號：CANDY-002
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元
# 範例：

def missing_char(chars)
  # 實作寫在這裡
  ([*(chars.first..chars.last)] - chars).first
end

chars1 = %w[a b c d f g]
chars2 = %w[O Q R S]

p missing_char(chars1) # 印出 e
p missing_char(chars2) # 印出 P
