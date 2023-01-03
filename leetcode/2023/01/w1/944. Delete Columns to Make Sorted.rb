# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  strs.map(&:chars).transpose.count { |e| e != e.sort }
end

TestCase = [
  [["cba","daf","ghi"], 1],
  [["a","b"], 0],
  [["zyx","wvu","tsr"], 3]
]

TestCase.each { |c, ans| p min_deletion_size(c) == ans }
