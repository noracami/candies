# @param {Integer[]} nums
# @return {Integer}
def distinct_prime_factors(nums)
  prime_factors = *(2..1000)
  2.upto(500) { |prime|
    prime_factors = prime_factors.reject { |ele|
      ele > prime && ele % prime == 0
    }
  }
  # p prime_factors
  
  ans = {}
  
  prime_factors.each { |prime|
    while nums.any?{ |num| num % prime == 0 }
      ans[prime] = true
      nums.map!{ |num|
        if num % prime == 0
          num / prime
        else
          num
        end    
      }
      nums.reject! {|_| _ == 1}
    end
  }
  ans.size
end
