def create_serial
  # "ORD20220815XXXXXX(0~9a-zA-Z)"
  rand_str = [*(0..9), *('a'..'z'), *('A'..'Z')].sample(6).join
  now = Time.now
  "ORD%4d%02d%02d%s" % [now.year, now.month, now.day, rand_str]
end

p create_serial