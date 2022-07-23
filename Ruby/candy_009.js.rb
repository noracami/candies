# frozen_string_literal: true

# 編號：009
# 程式語言：Ruby
# 題目：移除網址中的錨點（Anchor）

def remove_anchor(url)
  # 實作寫在這裡
  url.split('#').first
end

p remove_anchor('5xruby.tw') # 印出 5xruby.tw
p remove_anchor('5xruby.tw/#about') # 印出 5xruby.tw/
p remove_anchor('5xruby.tw/courses/?page=1#about') # 印出 5xruby.tw/courses/?page=1
