class Anagram
  def initialize(base_word)
    @base_word = base_word.downcase
    @base_letters = base_word.downcase.split("").sort
  end

  def match(words)
    words.select{ | word | word.downcase.split("").sort == @base_letters && word.downcase != @base_word }
  end
end