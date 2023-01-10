# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  # recursion
  return true if p.nil? && q.nil?
  return is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right) if p && q && p.val == q.val
  return false

  # iteration
  # preorder_traversal(p) == preorder_traversal(q)
end

def preorder_traversal(root)
  return [] if root.nil?

  res = []
  stack = [root]

  until stack.empty?
    node = stack.pop
    res << node&.val
    stack << node.right << node.left if node
  end

  res
end
