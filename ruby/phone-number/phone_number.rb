class PhoneNumber
  def self.clean(unformatted_number)
    formatted_number = unformatted_number.gsub(/([()--+. ])/,'')
    if formatted_number[0] == "1"
      formatted_number = formatted_number[1..-1]
    end
    if formatted_number.length != 10 || formatted_number[0] == "0" || formatted_number[0] == "1" || formatted_number[3] == "0" || formatted_number[3] == "1"
      return nil
    end
    formatted_number
  end
end