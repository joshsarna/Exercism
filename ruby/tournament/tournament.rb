class Tournament
  def self.tally(input)
    matches = input.split("\n")
    teams = {}
    matches.each do |match|
      match_stats = match.split(";")
      if !teams[match_stats[0]]
        teams[match_stats[0]] = {wins: 0, draws: 0, losses: 0}
      end
      if !teams[match_stats[1]]
        teams[match_stats[1]] = {wins: 0, draws: 0, losses: 0}
      end
      if match_stats[2] == "win"
        teams[match_stats[0]][:wins] += 1
        teams[match_stats[1]][:losses] += 1
      elsif match_stats[2] == "loss"
        teams[match_stats[0]][:losses] += 1
        teams[match_stats[1]][:wins] += 1
      elsif match_stats[2] == "draw"
        teams[match_stats[0]][:draws] += 1
        teams[match_stats[1]][:draws] += 1
      end
    end
    alpha_teams = teams.keys.sort.sort{ | a, b | (teams[b][:wins] * 3 + teams[b][:draws]) <=> (teams[a][:wins] * 3 + teams[a][:draws]) }

    output_grid = "Team                           | MP |  W |  D |  L |  P\n"
    alpha_teams.each do |team|
      w = teams[team][:wins]
      d = teams[team][:draws]
      l = teams[team][:losses]
      mp = w + d + l
      points = (3 * w) + (d)
      whitespace = " " * (31 - team.length)
      output_grid << "#{team}#{whitespace}|  #{mp} |  #{w} |  #{d} |  #{l} |  #{points}\n"
    end
    return output_grid
  end
end