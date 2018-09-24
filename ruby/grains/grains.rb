class Grains
  def self.square(n)
    if n < 1 || n > 64 || n % 1 != 0
      raise ArgumentError.new
    end
    2 ** (n - 1)
  end

  def self.total
    (1..64).reduce{ | sum, x | sum + square(x) }
  end
end