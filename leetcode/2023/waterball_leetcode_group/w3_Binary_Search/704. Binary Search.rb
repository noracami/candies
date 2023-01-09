# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  lo, hi = -1, nums.size

  while lo < hi
    mid = lo + hi >> 1
    return mid if nums[mid] == target
    return -1 if hi - lo == 1

    hi = mid if nums[mid] > target
    lo = mid if nums[mid] < target
  end
end

TestCase = [
  [[[-1,0,3,5,9,12], 9], 4],
  [[[-1,0,3,5,9,12], 2], -1],
]

TestCase.each { |c, ans| p search(*c) == ans }

