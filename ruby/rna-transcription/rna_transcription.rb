class Complement
  def self.of_dna(string)
    i = 0
    string.length.times do
      if string[i] == "A"
        string[i] = "U"
      elsif string[i] == "T"
        string[i] = "A"
      elsif string[i] == "C"
        string[i] = "G"
      elsif string[i] == "G"
        string[i] = "C"
      end
    end
    string
  end
end