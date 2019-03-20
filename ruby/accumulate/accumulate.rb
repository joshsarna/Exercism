class Array
  def accumulate
    output = self
    return output.map do |element|
      yield(element)
    end
  end
end