# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  h = {}
  letter = pattern.chars.uniq.each
  str = s.split
  return false if str.uniq.size != letter.size

  s.split.each { |word| h[word] = letter.next if h[word].nil? }
  pattern == s.split.inject('') { |memo, word| memo + h[word] }
end
