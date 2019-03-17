class TwelveDays
  @@gifts = {
    twelfth: "twelve Drummers Drumming",
    eleventh: "eleven Pipers Piping",
    tenth: "ten Lords-a-Leaping",
    ninth: "nine Ladies Dancing",
    eighth: "eight Maids-a-Milking",
    seventh: "seven Swans-a-Swimming",
    sixth: "six Geese-a-Laying",
    fifth: "five Gold Rings",
    fourth: "four Calling Birds",
    third: "three French Hens",
    second: "two Turtle Doves",
    first: "and a Partridge in a Pear Tree"
  }

  def self.song
    lyrics = []

    @@gifts.each do |day, gift|
      lyrics << "On the #{day} day of Christmas my true love gave to me: "

      lyrics.map! do  |lyric|
        lyric += "#{gift}, "
      end
    end

    lyrics.each do |lyric|
      lyric[-2..-1] = ".\n"
    end
    
    lyrics[-1].gsub!("and ", "")
    lyrics.reverse.join("\n")
  end
end