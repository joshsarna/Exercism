class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    simple_phrase = phrase.downcase.gsub(/,/, " ")
    words = simple_phrase.split(' ')
    counts = {}
    punctuation = ".,[]{}()'?!:&@%^$"
    words.each do |word|
      while punctuation.index(word[0])
        word[0] = ""
      end
      while punctuation.index(word[-1])
        word[-1] = ""
      end
      if counts[word]
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end
end