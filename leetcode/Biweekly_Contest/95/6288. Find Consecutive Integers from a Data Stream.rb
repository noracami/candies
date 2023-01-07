class DataStream
  attr_accessor :value, :k, :container, :h
    def initialize(value, k)
      @value = value
      @k = k
      @container = Containers::Deque.new
      @h = 0
    end
    def valid
      @k == @h
    end
    def consec(num)
      if @container.size >= @k
        pb = @container.pop_back
        @h -= 1 if pb == @value
      end
      @container.push_front num
      @h += 1 if num == @value
      
      valid
    end
end
