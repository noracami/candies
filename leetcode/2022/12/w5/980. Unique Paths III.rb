# @param {Integer[][]} grid
# @return {Integer}
def unique_paths_iii(grid)
  empty_squares = grid.reduce(0) { |memo, line| memo + line.select(&:zero?).count } + 1
  empty_squares = [empty_squares]
  
  # starting_square
  x, y = grid.map.with_index { |line, idx|
    [idx, line.index(1)] if line.index(1)
  }.compact.last

  ans = [0]
  
  backtracking(grid, x, y, empty_squares, {}, ans)
  # p "paths: #{empty_squares}"
  # puts '='*100
  # puts '='*100
  # p [x, y]
  puts "ans: #{ans}"
  ans.last
end

def backtracking(grid, x, y, paths, cache, ans)
  # print "#{x}-#{y}, "
  # puts [grid, x, y, paths, cache, ans].zip(%w[grid, x, y, paths, cache, ans]).map { |e|
  #   "#{e[1]}: #{e[0]}"
  # }.join(", ")

  # if visited cell
  # return if cache["#{x}-#{y}"]
  if cache["#{x}-#{y}"]
    # print "back(v), "
    return
  end

  # if obstacle cell
  # puts "x:#{x}\ty:#{y}"
  # return if grid[x][y] == -1
  if grid[x][y] == -1
    # print "back(o), "
    return
  end

  # print "#{x}-#{y}, "

  # if end cell
  if grid[x][y] == 2
    # p 'got'
    # p "paths: #{paths}"
    # p '='*10
    # ans[0] += 1 if paths == 0
    # print "end --> #{paths}, "
    if paths[0] + 1 == paths.size
      ans[0] += 1
      # p paths + ["#{x}-#{y}"]
      # print "ans+1\n"
    else
      # print "\n"
    end
    return
  end

  # empty cell
  cache["#{x}-#{y}"] = true
  # paths -= 1
  paths << "#{x}-#{y}"
  
  # check next cell
  
  cells = []
  cells << [x-1, y] if x > 0
  cells << [x+1, y] if x < grid.size - 1
  cells << [x, y-1] if y > 0
  cells << [x, y+1] if y < grid[0].size - 1
  cells.uniq!

  cells.each { |x, y|
    backtracking(grid, x, y, paths, cache, ans)
  }

  cache["#{x}-#{y}"] = nil
  paths.pop

  return
end


TEST_CASE = [
  [[1,0,0,0],[0,0,0,0],[0,0,2,-1]],
  [[1,0,0,0],[0,0,0,0],[0,0,0,2]],
  [[0,1],[2,0]]
]

ANS = [
  2,
  4,
  0
]

TEST_CASE.each_index { |idx|
  puts unique_paths_iii(TEST_CASE[idx]) == ANS[idx]
}
