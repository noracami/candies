# @param {Integer[]} nums
# @return {Integer}
def xor_beauty(nums)
  nums.inject(:^)
end

TestCase = [
  [[1,4], 5],
  [[15,45,20,2,34,35,5,44,32,30], 34],
]

TestCase.each { |c, ans| p xor_beauty(c) == ans }
