# frozen_string_literal: true

def three_sum(nums)
  def two_sum(array, target)
    seen = {}
    ans = []
    array.each_with_index do |num, idx|
      ans.push([target - num, num]) if seen.key?(target - num)
  
      seen[num] = idx
    end

    ans.empty? ? nil : ans
  end
  
  nums.map.with_index { |_num, _idx|
    new_arr = nums[0, _idx].concat(nums[_idx+1..])
    res = two_sum(new_arr, -_num)
    res.map { |a, b| [a, b, _num] } unless res.nil?
  }.compact.flatten.each_slice(3).map(&:sort).uniq
end

p three_sum([-1,0,1,2,-1,-4]) # 印出 [[-1,-1,2],[-1,0,1]]
p three_sum([0,1,1]) # 印出 []
p three_sum([0,0,0]) # 印出 [[0,0,0]]
p three_sum([-1,0,1,2,-1,-4,-2,-3,3,0,4]) # 印出 [[-4,0,4],[-4,1,3],[-3,-1,4],[-3,0,3],[-3,1,2],[-2,-1,3],[-2,0,2],[-1,-1,2],[-1,0,1]]
