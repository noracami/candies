# @param {Integer[]} nums
# @param {Integer[]} cost
# @return {Integer}
def min_cost(nums, cost)
  arr = nums.zip(cost)
            .sort { |a, b| a[0] <=> b[0] }
  
  tmp_ans = arr[1..].reduce(0) { |memo, e| memo += (e[0]-arr[0][0]).abs * e[1] }
  ans = tmp_ans

  return ans if ans.zero?

  arr = arr.map { |e| [e[0]-arr[0][0], e[1]]}
  
  left_sum, right_sum = 0, arr.sum{|_| _[1]}
  arr_size = arr.size
  
  arr[1..].each_index { |idx|
    left_num, right_num = idx+1, arr_size-idx-1
    left_sum += arr[idx][1]
    right_sum -= arr[idx+1][1]

    p (arr[idx+1][0] - arr[idx][0])
    tmp_ans = tmp_ans + (arr[idx+1][0] - arr[idx][0]) * (left_num * left_sum - right_num * right_sum)

    # p [ans, tmp_ans]
    ans = [ans, tmp_ans].min
  }
  ans
end

p min_cost([1,3,5,2], [2,3,1,14]) == 8
p min_cost([2,2,2,2,2], [4,2,8,1,3]) == 0
p min_cost([735103,366367,132236,133334,808160,113001,49051,735598,686615,665317,999793,426087,587000,649989,509946,743518], [724182,447415,723725,902336,600863,287644,13836,665183,448859,917248,397790,898215,790754,320604,468575,825614])# == 1907611126748

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
