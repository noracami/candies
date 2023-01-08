# @param {Integer[][]} points
# @return {Integer}
def max_points(points)
  points.sort!
  slope, res = Hash.new(0), 0

  points.zip(1..).each { |(x1, y1), idx|
    slope.clear

    points.drop(idx).each { |x2, y2|
      dx, dy = x2 - x1, y2 - y1

      g = dx.gcd(dy)
      m = [dx / g, dy / g]

      slope[m] += 1
      res = [res, slope[m]].max
    }
  }
  res + 1
end

TestCase = [
  [[[1,1],[2,2],[3,3]], 3],
  [[[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]], 4],
]

TestCase.each { |c, ans| p max_points(c) == ans }
