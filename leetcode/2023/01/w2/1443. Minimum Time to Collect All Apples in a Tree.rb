# @param {Integer} n
# @param {Integer[][]} edges
# @param {Boolean[]} has_apple
# @return {Integer}
def min_time(n, edges, has_apple)
  tree = {}
  edges.each { |a, b|
    tree[a] ||= []
    tree[a] << b
    tree[b] ||= []
    tree[b] << a
  }

  def dfs(node, parent, tree, has_apple)
    res = 0

    tree[node].each { |neighbor| res += dfs(neighbor, node, tree, has_apple) if neighbor != parent }

    return res + 2 if !res.zero? or has_apple[node]
    
    res
  end

  [dfs(0, -1, tree, has_apple) - 2, 0].max
end

# # Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right, :apple
#   def initialize(val = 0, left = nil, right = nil, apple = false)
#     @val = val
#     @left = left
#     @right = right
#     @apple = apple
#   end
# end
# # @param {Integer} n
# # @param {Integer[][]} edges
# # @param {Boolean[]} has_apple
# # @return {Integer}
# def min_time(n, edges, has_apple)
#   tree = {}
#   edges.sort!
#   edges.each { |a, b|
#     tree[a] ||= TreeNode.new(a, nil, nil, has_apple[a])
#     tree[b] ||= TreeNode.new(b, nil, nil, has_apple[b])
#     if tree[a].left
#       if tree[a].left.val > tree[b].val
#         tree[a].left, tree[a].right = tree[b], tree[a].left
#       else
#         tree[a].right = tree[b]
#       end
#     else
#       tree[a].left = tree[b]
#     end
#   }
#   p preorder_traversal(tree[0])
# end

# def preorder_traversal(root)
#   return [] if root.nil?

#   res = []
#   stack = [root]

#   until stack.empty?
#     node = stack.pop
#     res << node.val if node
#     stack << node.right << node.left if node
#   end

#   res
# end

TestCase = [
  [[7, [[0,1],[0,2],[1,4],[1,5],[2,3],[2,6]], [false,false,true,false,false,true,false]], 6],
]

TestCase.each { |c, ans| p min_time(*c) == ans }

# class Solution:
#   def minTime(self, n: int, edges: List[List[int]], hasApple: List[bool]) -> int:
#       # Construct the tree using the edges.
#       # Since the tree is undricted, we need to add both directions in the tree.
#       tree = defaultdict(list)
#       for s,e in edges:
#           tree[s].append(e)
#           tree[e].append(s)
      
#       # node is the current node we are examing.
#       # par is the node's direct parent node.
#       def dfs(node,par):
#           res = 0
#           # Since it is a tree, there will be no cycles.
#           # However, the tree is undirected, which means one of the neighbor node is its parent node.
#           for nei in tree[node]:
#               # Make sure we are not going backward to its parent node.
#               if nei != par:
#                   res += dfs(nei,node)
          
#           # case1, res != 0, this means we have found some apples down the tree
#           # case2, hasApple[node]==True, this means the current node has a apple on it
#           # In both cases, we will have to increase the result by 2.
#           # Adding 2 because we need 1 to get to this node and 1 going back
#           if res or hasApple[node]:
#               return res + 2
          
#           # There is no apple on this node or down the tree, res should 0.
#           # In this case we don't want to come to this node at all, so return 0.
#           return res
      
#       # Following the dfs, you can see that when we coming back to node 0, if there are some apples in the tree,
#       # We added an extra 2 to the result, so we need to -2 here.
#       # In case there is no apples in this tree, dfs will return 0, but we can't return -2, so just return 0
#       return max(dfs(0,-1)-2, 0)
