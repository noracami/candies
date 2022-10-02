# frozen_string_literal: true

# 2423. Remove Letter To Equalize Frequency

# @param {String} word
# @return {Boolean}
def equal_frequency(word)
  frequency = 'a'.upto('z').map { |v| word.count(v) }.reject(&:zero?)
  return true if frequency.size == 1
  return true if frequency.uniq.size == 1 && frequency.uniq.last == 1
  return false if frequency.uniq.size >= 3

  frequency.sort!
  frequency[0] -= 1
  return true if frequency.reject(&:zero?).uniq.size == 1

  frequency[0] += 1
  frequency[-1] -= 1
  return true if frequency.reject(&:zero?).uniq.size == 1

  false
end

# 2
# frequency = 'a'.upto('z').map { |v| word.count(v) }.reject(&:zero?)
# frequency.each_index do |i|
#   frequency[i] -= 1
#   return true if frequency.reject(&:zero?).uniq.size == 1

#   frequency[i] += 1
# end
# false

# 1
# word.each_char do |char|
#   frequency = { char => -1 }
#   word.each_char do |c|
#     if frequency[c]
#       frequency[c] += 1
#     else
#       frequency[c] = 1
#     end
#   end
#   return true if frequency.values.reject(&:zero?).uniq.size == 1
# end
# false
# end

p equal_frequency('abcc')
p equal_frequency('ababccc')
p equal_frequency('bac')
p equal_frequency('zz')
