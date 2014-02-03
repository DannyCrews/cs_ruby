require_relative 'board.rb'

puts "Starting tic-tac-toe..."
players = ['X', 'O']
current_player = players[rand(2)]
b = Board.new(current_player)
b.display()
puts

