# 編號：CANDY-002
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元
# 範例：

def missingChar chars
  # 實作寫在這裡
  ((chars.first..chars.last).to_a - chars).first
end

chars1 = ["a", "b", "c", "d", "f", "g"]
chars2 = ["O", "Q", "R", "S"]

p missingChar(chars1) # 印出 e
p missingChar(chars2) # 印出 P
