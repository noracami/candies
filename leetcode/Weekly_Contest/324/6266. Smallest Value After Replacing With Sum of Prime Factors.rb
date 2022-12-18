# @param {Integer} n
# @return {Integer}
def smallest_value(n)
  def sum_of_prime_factors(num)
      factors = []
      f = 2
      while f**2 <= num do
          while num % f == 0 do
              factors << f
              num = num / f
          end
          f += 1
      end
      
      factors << num if num > 1
      
      factors.sum
  end
  
  tmp = 0
  while n != tmp do
      n, tmp = sum_of_prime_factors(n), n
  end
  
  n
end
