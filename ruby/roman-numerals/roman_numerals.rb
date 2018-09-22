class Integer
  def to_roman
    roman_numerals = {
      1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
    }
    numerated_number = ""
    input_number = self
    roman_numerals.each do |key,value|
      (input_number / key).times do
        numerated_number << value
      end
      input_number %= key
    end
    numerated_number = numerated_number.gsub('DCCCC','CM')
    numerated_number = numerated_number.gsub('CCCC','CD')
    numerated_number = numerated_number.gsub('LXXXX','XC')
    numerated_number = numerated_number.gsub('XXXX','XL')
    numerated_number = numerated_number.gsub('VIIII','IX')
    numerated_number = numerated_number.gsub('IIII','IV')
    numerated_number
  end
end