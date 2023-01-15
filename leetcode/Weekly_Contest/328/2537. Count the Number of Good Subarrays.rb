# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_good(nums, k)
  previous = 0
  sub_array = Hash.new(0)

  nums.reduce(0) { |memo, n|
    k -= sub_array[n]
    sub_array[n] += 1
    
    while k <= 0
      sub_array[nums[previous]] -= 1
      k += sub_array[nums[previous]]
      previous += 1
    end
    
    memo + previous
  }
end
