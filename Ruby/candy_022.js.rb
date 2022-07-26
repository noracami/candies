# frozen_string_literal: true

# 編號：CANDY-022
# 程式語言：Ruby
# 題目：實作 Queue 資料結構

# implement queue
class Queue
  def initialize
    @container = []
  end

  def enqueue(element = nil)
    @container.push(element) unless element.nil?
  end

  def dequeue
    @container.shift
  end

  def size
    @container.size
  end
end

queue = Queue.new
queue.enqueue(123)
queue.enqueue(456)
queue.enqueue
p queue.size # 印出 2

item = queue.dequeue # 取出元素
p item # 印出 123

queue.dequeue # 繼續取出元素
p queue.size # 印出 0
