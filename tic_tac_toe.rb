require_relative "Player"
require_relative "TicTacToeGame"

new_game = TicTacToeGame.new()

puts "Welcome to Tic Tac Toe"

name = ""
until name.length > 1 
  print "Please enter player one's name: "
  name = gets.strip
end

new_game.add_player(Player.new(name, 1))

name = ""
until name.length > 1 
  print "Please enter player two's name: "
  name = gets.strip
end

new_game.add_player(Player.new(name, 2))
new_game.players.each { |player| puts "#{player.name} is using the #{player.piece}." }
new_game.show_board

until new_game.game_over == true
  player_this_round = ""

  new_game.players.each do |player|
    if player.turn == true
      player_this_round = player
    end
  end

  puts "Player this round is: #{player_this_round.name}"
  puts "#{player_this_round.name} is using the #{player_this_round.piece} piece."
  puts

  col = 0
  until col > 0 && col < 4
    print "#{player_this_round.name} please select a column to place your piece: "
    col = gets.strip.to_i
  end

  row = 0
  until row > 0 && row < 4
    print "#{player_this_round.name} please select a row to place your piece: "
    row = gets.strip.to_i
  end

  if new_game.space_empty(col, row)
    new_game.place_piece(col, row, player_this_round.piece)
  else
    puts
    puts "THAT SPACE IS FULL. Pick a new space."
  end

  new_game.show_board
end