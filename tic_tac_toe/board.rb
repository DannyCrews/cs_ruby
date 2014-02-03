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
end