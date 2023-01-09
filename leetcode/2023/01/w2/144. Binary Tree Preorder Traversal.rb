# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
  return [] if root.nil?

  res = []
  stack = [root]

  until stack.empty?
    node = stack.pop
    next if node.nil?
    res << node.val
    stack << node.right << node.left
  end

  res
end
