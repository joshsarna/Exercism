class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    highest = [-1, -1, -1]
    @scores.each do |score|
      if score > highest[0]
        highest[2] = highest[1]
        highest[1] = highest[0]
        highest[0] = score
      elsif score > highest[1]
        highest[2] = highest[1]
        highest[1] = score
      elsif score > highest[2]
        highest[2] = score
      end
    end
    highest.delete(-1)
    highest
  end
end