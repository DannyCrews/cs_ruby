class Board

  BOARD_MAX_INDEX = 2
  EMPTY_POS = ' '

  def initialize(current_player)
    @current_player = current_player
    @board = Array.new(BOARD_MAX_INDEX + 1){
      Array.new(BOARD_MAX_INDEX + 1) {EMPTY_POS}
    }
  end

  def display
    puts "+- - - - - -+"
    for row in 0..BOARD_MAX_INDEX
      # print has to be used when we don't want to output a line break
      print "| "
      for col in 0..BOARD_MAX_INDEX
        s = @board[row][col]
        if s == EMPTY_POS
          print col + (row * 3) + 1
        else
          print s
        end
        print " | "
      end
      puts "\n+- - - - - -+"
    end
  end

  def board_full
    for row in 0..BOARD_MAX_INDEX
      for col in 0..BOARD_MAX_INDEX
        if @board[row][col] == EMPTY_POS
          return false
        end
      end
    end
    return true
  end

  def winner
    winner = winner_rows()
    if winner
      return winner
    end
    winner = winner_cols()
    if winner
      return winner
    end
    winner = winner_diagonals()
    if winner
      return winner
    end
    # no winner
    return 
  end











end

