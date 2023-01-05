# @param {Integer[][]} points
# @return {Integer}
def find_min_arrow_shots(points)
  # points = points.sort_by { |point| point[1] }.sort_by { |point| point[0] }
  points = points.sort_by(&:last)
  # left = points[0][0]
  # points.each { |point|
  #   s = '.' * (point[1] + 1 - left)

  #   (point[1] + 2 - point[0]).times { |i|
  #     s[-i] = 'o' if i > 0
  #   }

  #   puts s
  # }

  # head, tail = points[0]
  # res = 0
  # points.each { |x_start, x_end|
  #   # head, tail
  #   head = [x_start, head].max
  #   if head > tail
  #     res += 1
  #     tail = x_end
  #   else
  #     tail = [x_end, tail].min
  #   end
  # }
  # res + 1

  # since head always smaller than tail until tail change
  # we dont need keep record head
  res = 1
  tail = points[0][1]
  points.each { |x_start, x_end|
    next if x_start <= tail

    res += 1
    tail = x_end
  }
  
  res
end

TestCase = [
  [[[10,16],[2,8],[1,6],[7,12]], 2],
  [[[1,2],[3,4],[5,6],[7,8]], 4],
  [[[1,2],[2,3],[3,4],[4,5]], 2]
]

TestCase.each { |c, ans| p find_min_arrow_shots(c) == ans }
