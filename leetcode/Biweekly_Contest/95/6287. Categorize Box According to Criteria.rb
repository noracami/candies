# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
  bulky = false
  bulky ||= length >= 10_000
  bulky ||= width >= 10_000
  bulky ||= height >= 10_000
  bulky ||= length*width*height >= 1_000_000_000

  heavy = false
  heavy = true if mass >= 100

  return "Both" if (bulky && heavy)
  return "Neither" if (bulky == false && heavy == false)

  return "Bulky" if bulky
  "Heavy"
end

TestCase = [
  [[1000,35,700,300], "Heavy"],
  [[200,50,800,50], "Neither"],
]

TestCase.each { |c, ans| p categorize_box(*c) == ans }
