class Sieve
  attr_reader :ceiling

  def initialize(ceiling)
    @ceiling = ceiling
  end

  def prime?(number)
    if number == 1
      return false
    elsif number == 2
      return true
    end
    i = 2
    Math.sqrt(number).floor.times do
      if number % i == 0
        return false
      end
      i += 1
    end
    return true
  end

  def primes
    i = 1
    primes = []
    ceiling.times do
      if prime?(i)
        primes << i
      end
      i += 1
    end
    primes
  end
end