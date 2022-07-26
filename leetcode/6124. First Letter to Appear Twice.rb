# @param {String} s
# @return {Character}

require 'set'
def repeated_character(s)
  d = Set[]
  s.each_char { |char| return char if d.add?(char).nil? }
end
p repeated_character('123bedesi')
