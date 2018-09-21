class Hamming
  def self.compute(string1,string2)
    if string1.length != string2.length
      raise ArgumentError.new("Not the same length")
    end
    i = 0
    hamming_distance = 0
    string1.length.times do
      if !(string1[i] == string2[i])
        hamming_distance += 1
      end
      i += 1
    end
    hamming_distance
  end
end