class PrimeFactors
  def self.for(number)
    factors = []
    i = 2
    Math.sqrt(number).floor.times do
      while number % i == 0
        factors << i
        number /= i
      end
      i += 1
    end
    factors << number
    factors.delete(1)
    factors
  end
end