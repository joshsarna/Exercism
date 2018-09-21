class Pangram
  def self.pangram?(sentence)
    if sentence == ''
      return false
    end
    letters = [*('a'..'z')]
    letters.each do |letter|
      if !sentence.downcase.index(letter.to_s)
        return false
      end
    end
    return true
  end
end