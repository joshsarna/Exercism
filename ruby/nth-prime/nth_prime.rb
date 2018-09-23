class Prime
  def self.prime?(number)
    i = 2
    Math.sqrt(number).floor.times do
      if number % i == 0
        return false
      end
      i += 1
    end
    return true
  end

  def self.nth(number)
    if number < 1
      raise ArgumentError.new("")
    end
    primes = [2]
    i = 3
    while primes.length < number
      if prime?(i)
        primes << i
      end
      i += 1
    end
    p primes
    primes[-1]
  end
end