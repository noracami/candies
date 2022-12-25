# @param {String[]} words
# @param {String} target
# @param {Integer} start_index
# @return {Integer}
def closet_target(words, target, start_index)
  if words.index(target)
    len = words.size
    distance = 0
    min_distance = 10 * len
    right = start_index
    left = start_index
    while words[right] != target
      right = (right + 1) % len
      distance += 1
    end
    min_distance = [min_distance, distance].min
    distance = 0
    while words[left] != target
      left = (left - 1 + len) % len
      distance += 1
    end
    [min_distance, distance].min
  else
    -1
  end
end
