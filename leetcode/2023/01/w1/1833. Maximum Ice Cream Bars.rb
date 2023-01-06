# @param {Integer[]} costs
# @param {Integer} coins
# @return {Integer}
def max_ice_cream(costs, coins)
  costs.sort.reduce(0) { |memo, cost|
    return memo if coins < cost

    coins -= cost
    memo + 1
  }
end
