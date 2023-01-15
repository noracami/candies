# @param {Integer[]} nums
# @return {Integer}
def maximum_count(nums)
  # 1
  pos = nums.count { _1 < 0 }
  neg = nums.count { _1 > 0 }
  [pos, neg].max
  # 2
  [nums.index { _1 >= 0 } || nums.size, nums.size - 1 - (nums.rindex { _1 <= 0 } || -1)].max
end
