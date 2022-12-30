# @param {Integer[]} piles
# @param {Integer} k
# @return {Integer}
def min_stone_sum(piles, k)
  h = PriorityQueue.new(piles)
  k.times {
    res = h.extract_maximum
    h.max_heap_insert(res - res / 2)
  }
  h.show_heap.sum
end

class PriorityQueue
  def initialize(elements)
    @elements = elements
    @heap_size = @elements.size
    build_max_heap
  end

  def parent(i)
    return 0 if i == 0
    i / 2
  end

  def left_child(i)
    2 * i
  end

  def right_child(i)
    2 * i + 1
  end

  def build_max_heap
    (@heap_size / 2).downto(1) { |i| max_heapify i }
  end

  def max_heapify(i)
    left = left_child i
    right = right_child i
    largest = 0

    if left <= @heap_size && @elements[left] && @elements[left] > @elements [i]
      largest = left
    else
      largest = i
    end
    
    if right <= @heap_size && @elements[right] && @elements[right] > @elements [largest]
      largest = right
    end

    if largest != i
      @elements[i], @elements[largest] = @elements[largest], @elements[i]
      max_heapify largest
    end
  end

  def extract_maximum
    if (@heap_size < 1)
      puts "heap underflow"
      return -1
    end

    max = @elements[1]
    if @heap_size > 2
      @elements[1] = @elements.pop
      max_heapify(1)
    else
      @elements.pop
    end
    
    max
  end

  def heap_increase_key(i, key)
    if key < @elements[i]
      puts "new key is smaller than current key"
      return
    end
    @elements[i] = key
    while (i > 1 && @elements[parent(i)] < @elements[i])
      @elements[i], @elements[parent(i)] = @elements[parent(i)], @elements[i]
      i = parent(i)
    end
  end

  def max_heap_insert(key)
    @elements.push -99999
    heap_increase_key(@heap_size - 1, key)
  end

  def show_heap
    @elements.drop(1)
  end
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
  # {
  #   piles: [1],
  #   k: 10000
  # },
  # {
  #   piles: big_arr,
  #   k: 98362
  # }
]

TEST_CASE.each { |_case|
  p min_stone_sum(_case[:piles], _case[:k])
}
