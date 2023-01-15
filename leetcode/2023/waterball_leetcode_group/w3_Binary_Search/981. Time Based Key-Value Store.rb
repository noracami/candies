class TimeMap
  attr_accessor :container
  
  def initialize()
    @container = Hash.new{ |h, k| h[k] = [] }
  end


=begin
  :type key: String
  :type value: String
  :type timestamp: Integer
  :rtype: Void
=end
  def set(key, value, timestamp)
    @container[key] << [value, timestamp]
    return
  end


=begin
  :type key: String
  :type timestamp: Integer
  :rtype: String
=end
  def get(key, timestamp)
    query = @container[key]
    return if query.nil?

    res = query.rindex { |data| timestamp >= data[1] }
    res.nil? ? "" : @container[key][res][0]
  end


end

# Your TimeMap object will be instantiated and called as such:
# obj = TimeMap.new()
# obj.set(key, value, timestamp)
# param_2 = obj.get(key, timestamp)
