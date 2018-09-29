class SumOfMultiples
  attr_reader :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(ceiling)
    sum = 0
    i = 1
    while i < ceiling
      continue = (numbers.length > 0)
      numbers_index = 0
      while continue
        if i % numbers[numbers_index] == 0
          sum += i
          continue = false
        end
        numbers_index += 1
        if numbers_index == numbers.length
          continue = false
        end
      end
      i += 1
    end
    sum
  end
end