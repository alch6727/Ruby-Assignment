class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2

    firstPlay = game[0][1]
    secondPlay = game[1][1]
    rock = "R"
    paper = "P"
    scissors = "S"
    if !(firstPlay =~ /^[rps]$/i) || !(secondPlay =~ /^[rps]$/i)
    	raise NoSuchStrategyError
    end

    if firstPlay + secondPlay =~ /rs|sp|pr|rr|ss|pp/i
    	return game[0]
    else
    	return game[1]
    end
end

def rps_tournament_winner(tournament)
	if tournament[0][1].is_a?(Array)
		return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	else
		return rps_game_winner(tournament)
	end
end

gameList = ["Romero","P"], ["Joramo", "S"]
tournament = [[[["Armando","P"],["Dave","S"]],[["Richard","R"],["Michael","S"]],],[[["Allen","S"],["Omer", "P"]],[["David E.","R"],["Richard X.","P"]]]]

puts rps_game_winner(gameList)
puts rps_tournament_winner(tournament)