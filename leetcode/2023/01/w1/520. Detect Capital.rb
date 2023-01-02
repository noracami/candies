# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  [word.downcase, word.upcase, word.capitalize].include? word
end
