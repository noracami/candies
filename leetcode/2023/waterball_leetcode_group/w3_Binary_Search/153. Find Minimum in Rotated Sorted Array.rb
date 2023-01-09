# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  # 1
  return nums.bsearch { nums.last >= _1 }

  # 2
  lo, hi = 0, nums.size - 1

  while lo <= hi
    mid = lo + hi >> 1
    lo = mid + 1 if nums[mid] > nums[hi]
    hi = mid - 1 if nums[mid] <= nums[hi]
  end

  nums[lo]
end

TestCase = [
  [[3,4,5,1,2], 1],
  [[4,5,6,7,0,1,2], 0],
  [[11,13,15,17], 11],
]

TestCase.each { |c, ans| p find_min(c) == ans }
