class Raindrops
  def self.convert(number)
    converted_string = ""
    if number % 3 == 0
      converted_string << "Pling"
    end
    if number % 5 == 0
      converted_string << "Plang"
    end
    if number % 7 == 0
      converted_string << "Plong"
    end
    if converted_string == ""
      return number.to_s
    else
      return converted_string
    end
  end
end