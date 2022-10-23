# @param {Integer[]} nums
# @param {Integer[]} cost
# @return {Integer}
def min_cost(nums, cost)
  
end

p min_cost([1,3,5,2], [2,3,1,14])
p min_cost([2,2,2,2,2], [4,2,8,1,3])

# Input: nums = [1,3,5,2], cost = [2,3,1,14]
# Output: 8
# Explanation: We can make all the elements equal to 2 in the following way:
# - Increase the 0th element one time. The cost is 2.
# - Decrease the 1st element one time. The cost is 3.
# - Decrease the 2nd element three times. The cost is 1 + 1 + 1 = 3.
# The total cost is 2 + 3 + 3 = 8.
# It can be shown that we cannot make the array equal with a smaller cost.

# Input: nums = [2,2,2,2,2], cost = [4,2,8,1,3]
# Output: 0
# Explanation: All the elements are already equal, so no operations are needed.
