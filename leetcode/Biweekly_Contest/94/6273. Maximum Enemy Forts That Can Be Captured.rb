# @param {Integer[]} forts
# @return {Integer}
def capture_forts(forts)
  forts.chunk_while {|e| e == 0}
    .each_cons(2)
    .map {|a, b| a[-1,1] + b}
    .map {|e| e.count 0}
    .max
end

testcase = [[1,0,0,-1,0,0,0,0,1],[0,0,1,-1]]

p capture_forts(testcase[0])
p capture_forts(testcase[1])
