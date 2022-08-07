#6142. Count Number of Bad Pairs

# @param {Integer[]} nums
# @return {Integer}
def count_bad_pairs(nums)
    nums.combination(2) {|c| p c}
end

p count_bad_pairs([1,3,3,5,0,0,0,0])


