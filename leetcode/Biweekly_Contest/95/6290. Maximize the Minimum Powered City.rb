# @param {Integer[]} stations
# @param {Integer} r
# @param {Integer} k
# @return {Integer}
def max_power(stations, r, k)
  stations = stations.map.with_index { |s, i|
    left = i - r < 0 ? 0 : i - r
    right = i + r + 1 > stations.size ? stations.size : i + r + 1
    stations[left, right - left].sum
  }

  min_station, max_station = stations.minmax
  return min_station + k if k < max_station - min_station
  k = k - (max_station - min_station)
  return max_station + k / stations.size if r == 0
  min_station + k / (stations.size / r)
end

TestCase = [
  [[ [1,2,4,5,0], 1, 2], 5],
  [[[4,4,4,4], 0, 3], 4],
]

TestCase.each { |c, ans| p max_power(*c) == ans }
