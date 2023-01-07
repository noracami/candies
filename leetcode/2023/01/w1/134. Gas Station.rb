# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
  return -1 if gas.sum < cost.sum

  current_gas = 0
  gas.each_index.reduce(0) { |start, idx|
    current_gas = 0 if current_gas < 0
    
    current_gas += gas[idx] - cost[idx]
    
    current_gas < 0 ? idx + 1 : start
  }
end
