class Array
  def keep
    self.select { |n|
      yield(n)
    }
  end

  def discard
    self.select { |n|
      !yield(n)
    }
   end
end