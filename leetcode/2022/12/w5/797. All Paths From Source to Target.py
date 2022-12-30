class Solution:
    def findPath(self, graph: List[List[int]], node: int, memo: dict, visits: List[int]) -> List[List[int]]:
        if node == len(graph) - 1 or not graph[node]:
            print(visits)
            if visits[-1] == len(graph) - 1:
                memo.append(visits)
        else:
            for i in graph[node]:
                self.findPath(graph, i, memo, visits + [i])
        return

    def allPathsSourceTarget(self, graph: List[List[int]]) -> List[List[int]]:
        # graph[i] = nodes can visit from
        memo = []
        self.findPath(graph, 0, memo, [0])
        return memo
