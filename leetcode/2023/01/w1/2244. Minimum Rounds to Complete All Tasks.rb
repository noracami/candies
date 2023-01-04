# @param {Integer[]} tasks
# @return {Integer}
def minimum_rounds(tasks)
  res = Hash.new(0)
  tasks.each { |task| res[task] += 1 }

  res.inject(0) { |memo, task|
    return -1 if task[1] == 1

    memo + (task[1] / 3.0).ceil
    
    # if task[1] % 3 == 0
      # memo + task[1] / 3
    # else
      # memo + task[1] / 3 + 1
    # end
    # q, r = task[1].divmod(3)
    # memo + (r == 0 ? q : q + 1)
  }
  
  # res = {}
  # tasks.each { |task| res[task] = res[task].nil? ? 1 : res[task] + 1 }

  # res.inject(0) { |memo, task|
  #   return -1 if task[1] == 1

  #   q, r = task[1].divmod(3)
  #   memo + (r == 0 ? q : q + 1)
  # }

  # tasks.group_by(&:to_i).inject(0) { |memo, task|
  #   return -1 if task[1].size == 1

  #   q, r = task[1].size.divmod(3)
  #   memo + (r == 0 ? q : q + 1)
  # }
end

TestCase = [
  [[2,2,3,3,2,4,4,4,4,4], 4],
  [[2,3,3], -1],
]

TestCase.each { |c, ans| p minimum_rounds(c) == ans }
