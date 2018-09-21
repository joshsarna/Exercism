class BeerSong
  def self.recite(number_of_initial_beers,number_of_verses)
    song = ""
    beers = number_of_initial_beers
    number_of_verses.times do
      plural = "s"
      one = "one"
      if beers == 0 || beers == "no more"
        beers = "No more"
      end
      if beers == 1
        plural = ""
      end
      if song != ""
        song << "\n"
      end
      song << "#{beers} bottle#{plural} of beer on the wall,"
      if beers == "No more"
        beers = "no more"
      end
      song << " #{beers} bottle#{plural} of beer.\n"
      if beers != "no more"
        beers -= 1
        if beers == 0
          beers = "no more"
          one = "it"
          plural = "s"
        end
        if beers == 1
          plural = ""
        end
        song << "Take #{one} down and pass it around, #{beers} bottle#{plural} of beer on the wall.\n"
      else
        song << "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      end
    end
    song
  end
end