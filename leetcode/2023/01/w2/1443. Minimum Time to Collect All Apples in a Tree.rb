# @param {Integer} n
# @param {Integer[][]} edges
# @param {Boolean[]} has_apple
# @return {Integer}
def min_time(n, edges, has_apple)
  tree = Hash.new { |h, k| h[k] = [] }
  edges.each { |a, b|
    tree[a] << b
    tree[b] << a
  }

  [dfs(0, -1, tree, has_apple) - 2, 0].max
end

def dfs(node, parent, tree, has_apple)
  res = 0

  tree[node].each { |neighbor| res += dfs(neighbor, node, tree, has_apple) if neighbor != parent }

  return res + 2 if !res.zero? || has_apple[node]

  res
end

TEST_CASE = [
  [[7, [[0, 1], [0, 2], [1, 4], [1, 5], [2, 3], [2, 6]], [false, false, true, false, false, true, false]], 6]
].freeze

TEST_CASE.each { |c, ans| p min_time(*c) == ans }
