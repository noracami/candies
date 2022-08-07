/**
 * @param {number[]} nums
 * @return {number}
 */
const countBadPairs = (nums) => {
  let badPairs = 0
  const len = nums.length
  const combination = (len * (len - 1)) / 2
  let goodPairs = 0
  const seen = {}
  //    i - j       != nums[i] - nums[j]
  // -> i - nums[i] !=       j - nums[j]
  for (let i = 0; i < len; i++) {
    if (seen[i - nums[i]] > 0) {
      goodPairs = goodPairs + seen[i - nums[i]]
      seen[i - nums[i]] = seen[i - nums[i]] + 1
    } else {
      seen[i - nums[i]] = 1
    }
  }
  badPairs = combination - goodPairs

  return badPairs
}
// const list = [4, 1, 3, 3]
// const list = [1, 2, 3, 4, 5]
console.log(countBadPairs(list)) // 5
