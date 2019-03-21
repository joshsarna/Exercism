class SpaceAge
  @@seconds_per_earth_year = 31557600

  @@planet_years = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1.0,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(seconds)
    @age_in_seconds = seconds
  end

  def on_mercury
    @age_in_seconds / @@planet_years[:mercury] / @@seconds_per_earth_year
  end

  def on_venus
    @age_in_seconds / @@planet_years[:venus] / @@seconds_per_earth_year
  end

  def on_earth
    @age_in_seconds / @@planet_years[:earth] / @@seconds_per_earth_year
  end

  def on_mars
    @age_in_seconds / @@planet_years[:mars] / @@seconds_per_earth_year
  end

  def on_jupiter
    @age_in_seconds / @@planet_years[:jupiter] / @@seconds_per_earth_year
  end

  def on_saturn
    @age_in_seconds / @@planet_years[:saturn] / @@seconds_per_earth_year
  end

  def on_uranus
    @age_in_seconds / @@planet_years[:uranus] / @@seconds_per_earth_year
  end

  def on_neptune
    @age_in_seconds / @@planet_years[:neptune] / @@seconds_per_earth_year
  end
end

# Earth: orbital period 365.25 Earth days, or 31557600 seconds
# Mercury: orbital period 0.2408467 Earth years
# Venus: orbital period 0.61519726 Earth years
# Mars: orbital period 1.8808158 Earth years
# Jupiter: orbital period 11.862615 Earth years
# Saturn: orbital period 29.447498 Earth years
# Uranus: orbital period 84.016846 Earth years
# Neptune: orbital period 164.79132 Earth years