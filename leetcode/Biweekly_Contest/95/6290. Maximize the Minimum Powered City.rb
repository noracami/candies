# @param {Integer[]} stations
# @param {Integer} r
# @param {Integer} k
# @return {Integer}
def max_power(stations, r, k)
  
end

TestCase = [
  [[[1,2,4,5,0], 1, 2], 5],
  [[[4,4,4,4], 0, 3], 4],
]

TestCase.each { |c, ans| p max_power(*c) == ans }
