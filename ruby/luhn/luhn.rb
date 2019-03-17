class Luhn
  def self.valid?(number)
    clean_number = number.gsub(" ", "")
    if clean_number.length < 2
      return false
    elsif !clean_number.split("").all?{ | n | ("0".."9").include?(n) }
      return false
    end
    i = clean_number.length % 2
    while i < clean_number.length
      doubled = clean_number[i].to_i * 2
      if doubled >= 10
        doubled -= 9
      end
      clean_number[i] = doubled.to_s
      i += 2
    end
    sum = clean_number.split("").map{ | n | n.to_i }.sum
    sum % 10 == 0
  end
end