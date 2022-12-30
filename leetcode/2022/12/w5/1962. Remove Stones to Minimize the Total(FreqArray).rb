# @param {Integer[]} piles
# @param {Integer} k
# @return {Integer}
def min_stone_sum(piles, k)
  freq = Array(0) * 10001
  sum = 0
  count = 0
  size = -1
  
  piles.each { |pile|
    freq[pile] += 1
    sum += pile
    size = [size, pile].max
  }

  j = 0s
  while j < k && size > 0
    freq[size - size / 2] += 1
    freq[size] -= 1
    count += size / 2
    while freq[size].zero? && size > 0
      size -= 1
    end
    j += 1
  end

  sum - count
end

big_arr = []

File.open('1962case', 'r') { |f|
  big_arr += f.readline.scan(/\d+/).map(&:to_i)
}

TEST_CASE = [
  {
    piles: [5,4,9],
    k: 2
  },
  {
    piles: [4,3,6,7],
    k: 3
  },
  {
    piles: [1],
    k: 10000
  },
  {
    piles: big_arr,
    k: 98362
  }
]

TEST_CASE.each { |_case|
  p min_stone_sum(_case[:piles], _case[:k])
}
