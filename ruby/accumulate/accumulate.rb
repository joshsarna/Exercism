class Array
  def accumulate
    b = lambda
    output = self
    output.each do |element|
      element = b.call element
    end
    return output
  end
end