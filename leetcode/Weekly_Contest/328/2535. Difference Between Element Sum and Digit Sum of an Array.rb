# @param {Integer[]} nums
# @return {Integer}
def difference_of_sum(nums)
  nums.sum - nums.flat_map(&:digits).sum
end
