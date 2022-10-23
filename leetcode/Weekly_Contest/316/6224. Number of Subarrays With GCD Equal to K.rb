# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_gcd(nums, k)
  ans = 0
  nums.each_index { |idx|
    i = nums[idx..].index { |e| e % k != 0} || 1000
    # print i
    # print " #{nums[idx..][i]}\n" if i
    # p nums[idx, i] if i
    nums[idx, i].reduce(nums[idx]) { |memo, ele|
      # p memo
      ans += 1 if memo.gcd(ele) == k
      memo.gcd(ele)
    } unless i.nil?
  }
  ans
end

p subarray_gcd([9,3,1,2,6,3], 3) # 4
p subarray_gcd([4], 7) # 0
