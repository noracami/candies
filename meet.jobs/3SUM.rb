# frozen_string_literal: true

def three_sum(nums)
  def two_sum(array, target)
    seen = {}
    res = []
    array.each_with_index do |num, idx|
      if seen[num]
        seen[num].zero? ? seen[num] += 1 : next
        res << [target, num, -(num + target)]
      else
        seen[-(num + target)] = 0
      end
    end

    res.empty? ? nil : res
  end
  
  ans = []
  
  arr = nums.sort!# { |a, b| b <=> a }
  
  while arr.size > 0
    i = arr.first
    ans.concat(two_sum(arr[1..], i) || [])
    arr.delete(i)
  end
  ans
end


# p three_sum([-1,0,1,2,-1,-4]) # 印出 [[-1,-1,2],[-1,0,1]]
# p three_sum([0,1,1]) # 印出 []
# p three_sum([0,0,0]) # 印出 [[0,0,0]]
# p three_sum([-1,0,1,2,-1,-4,-2,-3,3,0,4]).size # 印出 [[-4,0,4],[-4,1,3],[-3,-1,4],[-3,0,3],[-3,1,2],[-2,-1,3],[-2,0,2],[-1,-1,2],[-1,0,1]]
# a1 = [[-4,0,4],[-4,1,3],[-3,-1,4],[-3,0,3],[-3,1,2],[-2,-1,3],[-2,0,2],[-1,-1,2],[-1,0,1]]
# a2 = three_sum([-1,0,1,2,-1,-4,-2,-3,3,0,4])
# p a1.map(&:sort).sort == a2.map(&:sort).sort
# p $a
aa = [13,9,1,12,-7,-12,7,3,9,6,-7,4,9,5,5,-7,4,11,1,-2,12,3,-12,-15,0,-12,-6,-1,7,-5,-4,-3,12,4,-14,-10,-1,8,1,-6,-1,9,13,-14,-1,-5,-6,-12,-8,2,2,11,13,-3,11,-2,1,-10,4,-15,-8,7,-11,11,-4,-10,-13,3,5,3,12,11,-11,2,12,3,13,13,-2,12,-7,-15,8,-9,-10,-4,-4,6,1,-15,-2,0,-1,2,-3,10,-1,-9,-10,-11,1,-13,-15,5,-3,5,-7,-5,-5,6,14,3,-1,7,1,-4,-12,12,-13,-4,4,0,3,-12,9,-15,6]
p three_sum(aa)
