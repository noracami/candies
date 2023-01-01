# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximum_score(nums, k)
  left = k - 1
  right = k + 1
  score = nums[k]
  min_of_subarray = nums[k]
  lens = 1

  while left >= 0 || right <= nums.size - 1
    lens += 1

    # left at end
    if left < 0
      min_of_subarray = [min_of_subarray, nums[right]].min
      right += 1
    
    # right at end
    elsif right > nums.size - 1
      min_of_subarray = [min_of_subarray, nums[left]].min
      left -= 1

    elsif nums[left] >= nums[right]
      min_of_subarray = [min_of_subarray, nums[left]].min
      left -= 1

    else
      min_of_subarray = [min_of_subarray, nums[right]].min
      right += 1
    end
    
    new_score = lens * min_of_subarray
    score = [score, new_score].max
  end
  
  score
end
