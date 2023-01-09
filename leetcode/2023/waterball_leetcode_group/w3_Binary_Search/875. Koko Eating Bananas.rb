# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
  lo, hi = (piles.sum + h - 1) / h, piles.max
  
  # 1
  return (lo..hi).bsearch { |k| -piles.sum { |pile| -pile / k } <= h }
  
  # 2
  while lo <= hi
    k = lo + hi >> 1
    hour = -piles.sum { |pile| -pile / k }
    
    lo = k + 1 if hour > h
    hi = k - 1 if hour <= h
    p _ = {lo:, hi:, k:, hour:}
  end

  lo
end

TestCase = [
  [[[3,6,7,11], 8], 4],
  [[[30,11,23,4,20], 5], 30],
  [[[30,11,23,4,20], 6], 23],
]

TestCase.each { |c, ans| p min_eating_speed(*c) == ans }
