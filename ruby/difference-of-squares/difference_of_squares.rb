class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def sum_of_squares
    i = 1
    sum = 0
    number.times do
      sum += i ** 2
      i += 1
    end
    sum
  end

  def square_of_sum
    i = 1
    sum = 0
    number.times do
      sum += i
      i += 1
    end
    sum ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end