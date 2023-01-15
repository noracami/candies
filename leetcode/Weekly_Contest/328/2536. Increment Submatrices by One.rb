# @param {Integer} n
# @param {Integer[][]} queries
# @return {Integer[][]}
def range_add_queries(n, queries)
  arr = n.times.map { [0] * n }
  
  queries.each { |y1, x1, y2, x2|
    (y1..y2).each { |row|
      arr[row][x1] += 1
      arr[row][x2 + 1] -= 1 if x2 < n - 1
    }
  }
  (0...n).each { |row|
    (1...n).each { |column|
      arr[row][column] = arr[row][column]
      arr[row][column] += arr[row][column - 1]
    }
  }
  arr
end
