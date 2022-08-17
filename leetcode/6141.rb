# 6141. Merge Similar Items



# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}
def merge_similar_items(items1, items2)
  result = {}
  i1 = items1.to_h
  i2 = items2.to_h
  result = [items1.map{|i| i.first}|items2.map{|i| i.first}].flatten.sort
  result.map { |i|
    [i, (i1[i] || 0) + (i2[i] || 0)]
  }
end


p merge_similar_items([[1,1],[4,5],[3,8]],[[3,1],[1,5],[6,2]])
