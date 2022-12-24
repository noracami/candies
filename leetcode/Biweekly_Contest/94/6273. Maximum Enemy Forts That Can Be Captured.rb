# @param {Integer[]} forts
# @return {Integer}
def capture_forts(forts)
  forts.chunk_while {|e| e == 0}
    .each_cons(2)
    .map {|a, b| a[-1,1] + b}
    .select {|e| e.any? 1}
    .select {|e| e.any? -1}
    .map {|e| e.count 0}
    .max || 0
end

TestCase = [
  [1,0,0,-1,0,0,0,0,1],
  [0,0,1,-1],
  [-1,-1,1,-1,-1,0],
  [0,-1,-1,0,-1],
  [-1,-1,0,1,0,0,1,-1,1,0]
]

TestCase.each {|c| puts capture_forts c}
