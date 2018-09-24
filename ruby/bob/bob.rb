class Bob
  def self.hey(remark)
    remark = remark.strip
    if remark[-1] == "?"
      if remark == remark.upcase && remark != remark.downcase
        "Calm down, I know what I'm doing!"
      else
        "Sure."
      end
    elsif remark == remark.upcase && remark != remark.downcase
      "Whoa, chill out!"
    elsif remark == ""
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end