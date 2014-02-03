#Fourth Problem: Code skeleton from assignment

class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2

    firstPlay = game[0][1] #Obtain the hand played by the first player (first array, second element)
    secondPlay = game[1][1] #Obtain the hand played by the second player (second array, second element)
    if !(firstPlay =~ /^[rps]$/i) || !(secondPlay =~ /^[rps]$/i) #if play includes anything except R,P,S (case insensitive, raise error)
    	raise NoSuchStrategyError
    end

    if firstPlay + secondPlay =~ /rs|sp|pr|rr|ss|pp/i #possible wins for first player
    	return game[0]
    else
    	return game[1]
    end
end

def rps_tournament_winner(tournament)
	if tournament[0][1].is_a?(Array) # if the inner argument is an array, there are more matches to be held
		return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	else
		return rps_game_winner(tournament)
	end
end

puts "Rock, Paper, Scissors Tournament: Winning test cases from assignment"
puts "Dave should win, then Richard, then the NoSuchStrategyError should be raised"

tournament = [[[["Armando","P"],["Dave","S"]],[["Richard","R"],["Michael","S"]],],[[["Allen","S"],["Omer", "P"]],[["David E.","R"],["Richard X.","P"]]]]

p rps_game_winner([["Armando", "P"], ["Dave", "S"]])
p rps_tournament_winner(tournament)
p rps_game_winner([["Armando", "P"], ["Dave", "Q"]])
# Is not printed but should raise the WrongNumberOfPlayersError
p rps_game_winner([["Armando", "P"], ["Dave", "S"], ["Joramo", ""]])