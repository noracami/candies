# @param {Integer} num
# @return {Integer}
def count_digits(num)
  num.digits.reduce(0) { |memo, el| num % el == 0 ? memo + 1 : memo }
end
