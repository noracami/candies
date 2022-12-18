# @param {String[]} words
# @return {Integer}
def similar_pairs(words)
  res = words.map { |word|
      word.chars.uniq.sort.join
  }.permutation(2).count {|a, b| a == b}
  
  res / 2
end
