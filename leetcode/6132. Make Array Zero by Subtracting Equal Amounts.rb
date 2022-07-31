# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
  t = nums
  time = 0

  loop {
    break if (t.uniq.size == 1 && t.first == 0)
    time = time + 1
    # p t
    # p 'before'
    s = t.uniq.min(2)
    s = s.min == 0 ? s.max : s.min
    t.map!{ |n| n >= s ? n - s : n }
    # p 'after'
    # p t
  }
  time
end

# p minimum_operations [1,5,0,3,5]
# p minimum_operations [0]
# p minimum_operations [1]
p minimum_operations [2,3,4,5]
# Input: nums = [1,5,0,3,5]
# Output: 3
# Explanation:
# In the first operation, choose x = 1. Now, nums = [0,4,0,2,4].
# In the second operation, choose x = 2. Now, nums = [0,2,0,0,2].
# In the third operation, choose x = 2. Now, nums = [0,0,0,0,0].

# Input: nums = [0]
# Output: 0
# Explanation: Each element in nums is already 0 so no operations are needed.
