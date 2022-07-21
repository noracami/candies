# 編號：CANDY-017
# 程式語言：Ruby
# 題目：計算數字的 2 進位裡有幾個 1
# 範例：5 -> 101 -> 2 個 1

def countBits(num)
  # 實作寫在這裡
  num.to_s(2).count('1')
end

p countBits(1234) # 5
p countBits(1450) # 6
p countBits(9527) # 8
