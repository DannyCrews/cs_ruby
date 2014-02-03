class Board

  BOARD_MAX_INDEX = 2
  EMPTY_POS = ' '

  def initialize(current_player)
    @current_player = current_player
    @board = Array.new(BOARD_MAX_INDEX + 1){
      Array.new(BOARD_MAX_INDEX + 1) {EMPTY_POS}
    }
  end
end