# @param {Integer[]} nums
# @param {Integer} space
# @return {Integer}
def destroy_targets(nums, space)
  slots = {}
  nums.sort!
  nums.each { |n|
    if slots[(n % space).to_s]
      slots[(n % space).to_s].push n
    else
      slots[(n % space).to_s] = [n]
    end
  }
  slots.max_by { |key, elements| elements.size }[1][0]
end

arr = [5,1,5,3,2,2]
sp = 2
p destroy_targets(arr, sp)
p 2
