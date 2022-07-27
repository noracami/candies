# frozen_string_literal: true

# 編號：010
# 程式語言：Ruby
# 題目：把數字以 10 進位展開式呈現，數字均為大於 0 的正整數
# 範例：9527 變成 "1000 x 9 + 100 x 5 + 10 x 2 + 7"

def expanded_form(num)
  num.digits
     .map
     .with_index do |x, i|
       (i.zero? ? x : "#{10**i} x #{x}") unless x.zero?
     end
     .compact
     .reverse
     .join(' + ')
  # digis =
  #   num.to_s
  #      .split('')
  #      .map.with_index do |element, index|
  #        pow = 10**(num.to_s.size - index - 1)
  #        pow == 1 ? element : "#{pow} x #{element}"
  #      end
  # digis.reject { |x| x.end_with? '0' }.join(' + ')
end

p expanded_form(8) # 印出 "8"
p expanded_form(25) # 印出 "10 x 2 + 5"
p expanded_form(148) # 印出 "100 x 1 + 10 x 4 + 8"
p expanded_form(1450) # 印出 "1000 x 1 + 100 x 4 + 10 x 5"
p expanded_form(60_308) # 印出 "10000 x 6 + 100 x 3 + 8"
