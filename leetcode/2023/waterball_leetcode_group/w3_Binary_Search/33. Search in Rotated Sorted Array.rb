# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  m = nums.bsearch_index { nums.last >= _1 }
  s1 = nums[0...m].bsearch_index{ target <=> _1 }
  s2 = nums[m...].bsearch_index{ target <=> _1 }
  s2 += m if s2
  s1 || s2 ? s1 || s2 : -1
end

TestCase = [
  [[[4,5,6,7,9,-2,-1,0,1,2], 5], 1],
  [[[1,2,3,4,5,6], 4], 3],
  [[[5,1,2,3,4], 1], 1],
  [[[4,5,6,7,0,1,2], 0], 4],
  [[[4,5,6,7,0,1,2], 3], -1],
  [[[1], 0], -1],
  [[[1,3], 3], 1],
]

TestCase.each { |c, ans| p search(*c) == ans }
