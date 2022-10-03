# frozen_string_literal: true

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def common_factors(a, b)
  [*1..a.gcd(b)].filter { |i| (a % i + b % i).zero? }.size

  # 1
  # result = 0
  # 1.upto([a, b].min) do |i|
  #   result += 1 if (a % i).zero? && (b % i).zero?
  # end
  # result
end

p common_factors(8, 16)
