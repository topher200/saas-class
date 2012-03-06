require 'homework_1_2.rb'

begin
  puts rps_game_winner([ [ "Dave", "S" ] ])
rescue WrongNumberOfPlayersError
  puts true
else
  puts false
end

begin
  puts rps_game_winner([ [ "Armando", "H" ], [ "Dave", "S" ] ])
rescue NoSuchStrategyError
  puts true
else
  puts false
end

puts rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ]) ==
  [ "Dave", "S" ]

puts rps_tournament_winner(
[
[
[ ["Armando", "P"], ["Dave", "S"] ],
[ ["Richard", "R"],  ["Michael", "S"] ],
],
[ 
[ ["Allen", "S"], ["Omer", "P"] ],
[ ["David E.", "R"], ["Richard X.", "P"] ]
]
]
                           ) == ["Richard", "R"]
