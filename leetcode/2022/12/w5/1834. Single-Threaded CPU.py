class Solution:
    def getOrder(self, tasks: List[List[int]]) -> List[int]:
        # To simulate the problem we first need to note that if at any point in time
        # there are no enqueued tasks we need to wait to the smallest enqueue time of
        # a non-processed element.

        # We need a data structure like a min-heap to support choosing the task with
        # the smallest processing time from all the enqueued tasks.
        # import heapq
        ans = []
        res = sorted([(task[0], task[1], i) for i, task in enumerate(tasks)])
        i = 0
        available_tasks = []
        time = res[0][0]

        while len(ans) < len(tasks):
            while (i < len(tasks)) and (res[i][0] <= time):
                heapq.heappush(available_tasks, (res[i][1], res[i][2]))
                i += 1
            if available_tasks:
                t_diff, original_index = heapq.heappop(available_tasks)
                time += t_diff
                ans.append(original_index)
            elif i < len(res):
                time = res[i][0]
        return ans
