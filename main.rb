require './Question.rb'
require './Player.rb'
require './Game.rb'

puts "Lets play a game!"
puts "====== New Game ========="
p "Player 1 enter your name:"
  player1 = $stdin.gets.chomp
puts "========================="
p "Player 2 enter your name:"
  player2 = $stdin.gets.chomp
puts "========================="

player1 = Player.new(player1)
player2 = Player.new(player2)

game = Game.new player1, player2
game.start