class ETL
  def self.transform(old)
    new_hash = {}
    old.each do |key,value|
      value.each do |letter|
        new_hash[letter.downcase] = key
      end
    end
    new_hash
  end
end