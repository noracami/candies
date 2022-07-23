# 編號：004
# 程式語言：Ruby
# 題目：完成函數的內容，把傳進去的秒數變成平常人類看的懂的時間格式

def human_readable_timer(seconds)
  # 實作在這裡
  hours = seconds / 3600
  minutes = (seconds % 3600) / 60
  seconds = seconds % 60
  format('%02d:%02d:%02d', hours, minutes, seconds)
end

p human_readable_timer(0) # 印出 00:00:00
p human_readable_timer(59) # 印出 00:00:59
p human_readable_timer(60) # 印出 00:01:00
p human_readable_timer(90) # 印出 00:01:30
p human_readable_timer(3599) # 印出 00:59:59
p human_readable_timer(3600) # 印出 01:00:00
p human_readable_timer(45_296) # 印出 12:34:56
p human_readable_timer(86_399) # 印出 23:59:59
p human_readable_timer(86_400) # 印出 24:00:00
p human_readable_timer(359_999) # 印出 99:59:59
