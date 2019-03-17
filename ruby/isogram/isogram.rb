class Isogram
  def self.isogram?(phrase)
    letters = phrase.gsub(/[^a-z]/i, '').downcase.split('')
    letters.uniq == letters
  end
end