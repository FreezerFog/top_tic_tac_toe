class TicTacToeGame

  attr_accessor :board, :game_over
  attr_reader :players

  def initialize
    @board = make_board
    @game_over = false
    @players = []
    @winner = "None"
  end


  def make_board 
    board = [
      ['.', '.', '.'],
      ['.', '.', '.'],
      ['.', '.', '.']
    ]

    # board = [
    #   ['O', '.', '.'],
    #   ['X', 'X', '.'],
    #   ['O', 'X', 'O']
    # ]
  end


  def show_board
    puts
    puts "   1|2|3"
    puts "   -----"
    board.each_with_index do |row, index|
      print "#{index + 1} |" 
      puts row.join('|') 
    end
    puts
  end

  
  def add_player(player)
    @players << player
    player.game = self
  end


  def space_empty(column, row)
    board[row - 1][column - 1] == "." ? true : false
  end


  def place_piece(column, row, piece)
    self.board[row -1][column - 1] = piece
    switch_players
  end


  def switch_players
    @players.each do |player| 
      if player.turn == true
        player.turn = false
      else
        player.turn = true
      end
    end
  end


  def check_win
    
  end
end