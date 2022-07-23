# frozen_string_literal: true

# 編號：010
# 程式語言：Ruby
# 題目：把數字以 10 進位展開式呈現，數字均為大於 0 的正整數
# 範例：9527 變成 "1000 x 9 + 100 x 5 + 10 x 2 + 7"

def expanded_form(num)
  digis = num.to_s.codepoints.map { |x| (x - 48) }
  digis = digis.map.with_index do |element, index|
    power = 10**(digis.size - index - 1)
    power == 1 ? element.to_s : "#{power} x #{element}"
  end
  digis.reject { |x| x.end_with? '0' }.join(' + ')
end

p expanded_form(8) # 印出 "8"
p expanded_form(25) # 印出 "10 x 2 + 5"
p expanded_form(148) # 印出 "100 x 1 + 10 x 4 + 8"
p expanded_form(1450) # 印出 "1000 x 1 + 100 x 4 + 10 x 5"
p expanded_form(60_308) # 印出 "10000 x 6 + 100 x 3 + 8"
