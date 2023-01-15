# @param {String} s1
# @param {String} s2
# @param {String} base_str
# @return {String}
def smallest_equivalent_string(s1, s2, base_str)
  @root = [*(0..25)]

  # recursively get the root element
  def get(x)
    x == @root[x] ? x : get(@root[x])
  end

  # unite two elements
  def unite(x, y)
    # find the root of x and y, 
    x, y = get(x), get(y)
    if x != y
      # if their roots are not same, we combine them
      @root[y] = x if y > x
      @root[x] = y if x > y
    end
  end

  s1.size.times { |i| unite(s1[i].ord - 'a'.ord, s2[i].ord - 'a'.ord) }
  # dsu to build the final answer from the root element (smallest)
  base_str.codepoints.map { |o| ('a'.ord + get(o - 'a'.ord)).chr }.join
end
