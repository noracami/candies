# @param {Integer} n
# @param {Integer[][]} edges
# @return {Boolean}
def is_possible(n, edges)
  degree = n.times.map { |i| {id: i+1, count: 0, nodes: []}}
  
  edges.each { |a, b|
      degree[a - 1][:count] += 1
      degree[a - 1][:nodes] << b
      
      degree[b - 1][:count] += 1
      degree[b - 1][:nodes] << a
  }
  
  degree.select! { |n| n[:count].odd? }
  
  return true if degree.empty?
  
  target = degree.map { |_| _[:id] }
  
  degree.each { |m|
      m[:nodes].select! { |_| target.include?(_) }
  }
  
  dup_degree = degree.to_h {|item| [item[:id], item]}
  
  if degree.size == 2 || degree.size == 4
      common_edges_num = 0
      dup_degree.each { |key, node|
          node[:nodes].each { |n|
              common_edges_num += 1
              dup_degree[n][:nodes].delete(key)
          }
      }
      if common_edges_num >= 3 && degree.one? { |node| node[:nodes].size == 0 || node[:nodes].size == 3 }
          return false
      else
          true
      end
  else
      false
  end
end
