class RunLengthEncoding
  def self.encode(input)
    # return input
    characters = input.split('')
    current_character = ""
    current_character_count = 0
    output = ""
    characters.each do |character|
      if character == current_character
        current_character_count += 1
      elsif current_character_count == 1
        output << "#{current_character}"
        current_character = character
        current_character_count = 1
      elsif current_character_count > 1
        output << "#{current_character_count}#{current_character}"
        current_character = character
        current_character_count = 1
      else
        current_character = character
        current_character_count = 1
      end
    end
    if current_character_count > 1
      output << "#{current_character_count}#{current_character}"
    elsif current_character_count == 1
      output << "#{current_character}"
    end
    return output
  end

  def self.decode(encoded_input)
    i = 0
    output = ""
    encoded_input.length.times do
      if [*('a'..'z'),*('A'..'Z'),' '].include?(encoded_input[i])
        if i > 0 && [*('0'..'9')].include?(encoded_input[i-1])
          if i > 1 && [*('0'..'9')].include?(encoded_input[i-2])
            output << (encoded_input[i] * encoded_input[i - 2..i - 1].to_i)
          else
            output << (encoded_input[i] * encoded_input[i - 1].to_i)
          end
        else
          output << encoded_input[i]
        end
      end
      i += 1
    end
    return output
  end
end