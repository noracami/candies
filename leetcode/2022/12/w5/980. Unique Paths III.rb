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

  ans.last
end

def backtracking(grid, x, y, paths, cache, ans)
  # if cell visited 
  return if cache["#{x}-#{y}"]

  # if cell is obstacle 
  return if grid[x][y] == -1

  # if cell is end 
  if grid[x][y] == 2
    # if visited all empty cells (and start & end)
    ans[0] += 1 if paths[0] + 1 == paths.size
    return
  end

  # if cell is empty 
  cache["#{x}-#{y}"] = true
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
