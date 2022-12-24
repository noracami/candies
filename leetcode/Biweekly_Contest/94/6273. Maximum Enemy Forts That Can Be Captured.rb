# @param {Integer[]} forts
# @return {Integer}
def capture_forts(forts)
  forts.chunk_while { |e, _| e == 0 }
    .each_cons(2)
    .map { |a, b| b.unshift a.last }
    .select { |e| e.uniq.size == 3 }
    .map { |e| e.count 0 }
    .max || 0
end

TestCase = [
  [1,0,0,-1,0,0,0,0,1],
  [0,0,1,-1],
  [-1,-1,1,-1,-1,0],
  [0,-1,-1,0,-1],
  [-1,-1,0,1,0,0,1,-1,1,0]
]

TestCase.each { |c| p capture_forts c }
