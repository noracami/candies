# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  r = 1
  buy, sell = prices[0], prices[r1]
  res = 0

  while r <= prices.size - 1
    sell = [sell, prices[r]].max
    res  = [res, sell - buy].max

    if prices[r] < buy
      buy = prices[r]
      r = r + 1
      sell = prices[r] || -1
    else
      r = r + 1
    end
  end

  res
end
