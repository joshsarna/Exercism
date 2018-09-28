class Series
  attr_reader :series_string

  def initialize(series_string)
    @series_string = series_string
  end

  def slices(slice_length)
    if slice_length > series_string.length
      raise ArgumentError.new
    end
    slices = []
    i = 0
    while (i + slice_length <= series_string.length)
      slices << series_string[i,slice_length]
      i += 1
    end
    slices
  end
end