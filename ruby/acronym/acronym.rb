class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(" ")
    acro = ""
    words.each do |word|
      word.split("-").each do |w|
        acro << w[0].upcase
      end
    end
    acro
  end
end