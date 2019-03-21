class Game
  def initialize
    @score = 0
    @past_scores = []
    @spare = false
    @strike_bonuses = [0, 0, 0]
  end

  def score
    if @past_scores.length < 20
      raise BowlingError, 'Game hasn\'t concluded'
    end
    if @spare && @past_scores.length < 22
      raise BowlingError, 'Game hasn\'t concluded'
    end
    if (@past_scores.length == 20 && @past_scores[-2..-1] == [10, 0]) 
      raise BowlingError, 'Game hasn\'t concluded'
    end
    if @past_scores.length == 22 && @past_scores[-4..-1] == [10, 0, 10, 0]
      raise BowlingError, 'Game hasn\'t concluded'
    end

    # p @past_scores
    @score
  end

  def roll(pin_count)
    if pin_count < 0 || pin_count > 10
      raise BowlingError, 'Pin Count must be between 0 and 10'
    end
    if (@past_scores.length >= 20 && @strike_bonuses == [0, 0, 0] && !@spare) || @past_scores.length >= 24 || (@past_scores.length == 22 && @past_scores[-2..-1] != [10, 0])
      raise BowlingError, 'Game is over'
    end

    if @past_scores.length % 2 != 0 && pin_count + @past_scores[-1] > 10
      raise BowlingError, 'Pin Count cannot exceed 10 within a single frame'

    end

    @score += pin_count
    
    if @spare && @past_scores.length < 20
      @score += pin_count
    end
    @spare = false
    if @strike_bonuses[0] > 0 && @past_scores.length < 20
      @score += pin_count
      @strike_bonuses[0] -= 1
    end
    if @strike_bonuses[1] > 0 && @past_scores.length < 22
      @score += pin_count
      @strike_bonuses[1] -= 1
    end
    if @strike_bonuses[2] > 0 && @past_scores.length < 22
      @score += pin_count
      @strike_bonuses[2] -= 1
    end

    @past_scores << pin_count

    if @past_scores.length % 2 == 0 && @past_scores[-1] + @past_scores[-2] == 10
      @spare = true
    end
    if pin_count == 10 && @past_scores.length % 2 != 0
      @past_scores << 0
      if @strike_bonuses[0] > 0
        if @strike_bonuses[1] > 0
          @strike_bonuses[2] = 2
        else
          @strike_bonuses[1] = 2
        end
      else
        @strike_bonuses[0] = 2
      end
    end
  end

  class BowlingError < StandardError
  end
end
