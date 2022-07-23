# frozen_string_literal: true

# 編號：008
# 程式語言：Ruby
# 題目：傳入一字串，計算得分最高的字
#      英文字母 a 得 1 分、b 得 2 分、c 得 3 分，以此類推。
#      所有傳入的字都是小寫。

def highest_score_word(input)
  scoring_words = input.split(' ').map do |word|
    {
      word: word,
      score: word.codepoints.map { |x| x - 96 }.sum
    }
  end
  scoring_words.max { |a, b| a[:score] <=> b[:score] }[:word]
end

p highest_score_word('lorem ipsum dolor sit amet') # 印出 ipsum
p highest_score_word('heyn i need a rubygem up to build this') # 印出 rubygem
p highest_score_word('in time machine there are some bugs') # 印出 there
