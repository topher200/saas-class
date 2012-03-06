class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

$actions = ["R", "P", "S"]

# Returns true if player1's action beats player2's
def player_wins(player1_action, player2_action)
  if ((player1_action == "R" and player2_action == "S") or
      (player1_action == "S" and player2_action == "P") or
      (player1_action == "P" and player2_action == "R"))
    return true
  end
end
    
def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |player, action|
    raise NoSuchStrategyError unless $actions.include?(action.upcase)
  end

  if player_wins(game[1][1], game[0][1])
    # player 2 wins!
    return game[1]
  else
    # player 2 doesn't win, so player 1 must win!
    return game[0]
  end
end

def rps_tournament_winner(game_array)
  # A game is an array (of length 2), where each element is an array (also of
  # length 2). We can check if the first element of the first array is a
  # player string to see if we have a game or not.
  if game_array[0][0].kind_of?(String)
    return rps_game_winner(game_array)
  else
    # It's not a string, so we must still have a tournament
    return rps_tournament_winner([rps_tournament_winner(game_array[0]),
                                  rps_tournament_winner(game_array[1])])
  end
end
