class Clock
  attr_accessor :hour, :minute

  def initialize(time)
    @hour = time[:hour] || 0
    @minute = time[:minute] || 0
    @hour += (@minute / 60)
    @hour %= 24
    @minute %= 60
    @hour = @hour.to_s
    @minute = @minute.to_s
    while @hour.length < 2
      @hour = "0" + @hour
    end
    while @minute.length < 2
      @minute = "0" + @minute
    end
  end

  def to_s
    "#{@hour}:#{@minute}"
  end

  def + (clock)
    clock.hour = (clock.hour.to_i + @hour.to_i)
    clock.minute = (clock.minute.to_i + @minute.to_i)
    clock.hour += (clock.minute / 60)
    clock.hour %= 24
    clock.minute %= 60
    clock.hour = clock.hour.to_s
    clock.minute = clock.minute.to_s
    while clock.hour.length < 2
      clock.hour = "0" + clock.hour
    end
    while clock.minute.length < 2
      clock.minute = "0" + clock.minute
    end
    return clock
  end

  def - (clock)
    clock.hour = (@hour.to_i - clock.hour.to_i)
    clock.minute = (@minute.to_i - clock.minute.to_i)

    while clock.minute < 0
      clock.minute += 60
      clock.hour -= 1
    end
    while clock.hour < 0
      clock.hour += 24
    end
    clock.hour = clock.hour.to_s
    clock.minute = clock.minute.to_s
    while clock.hour.length < 2
      clock.hour = "0" + clock.hour
    end
    while clock.minute.length < 2
      clock.minute = "0" + clock.minute
    end
    return clock
  end

  def == (clock)
    @minute == clock.minute && @hour == clock.hour
  end
end