import heapq


class Solution:
    def maxKelements(self, nums: List[int], k: int) -> int:
        nums = list(map(lambda x: -x, nums))
        heapq.heapify(nums)
        res = 0
        for i in range(k):
            # item = nums[0]
            res += -nums[0]
            heapq.heapreplace(nums, nums[0] // 3)
        return res
