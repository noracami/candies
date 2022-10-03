# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def max_sum(grid)
  v = 0
  j_len = grid.size - 3
  0.upto(grid[0].size - 3) do |i|
    0.upto(j_len) do |j|
      v = [v, [grid[j][i, 3], grid[j + 1][i + 1], grid[j + 2][i, 3]].flatten.sum].max
    end
  end
  v
end

p max_sum([[6, 2, 1, 3], [4, 2, 1, 5], [9, 2, 8, 7], [4, 1, 2, 9]])
