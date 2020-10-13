require './Player.rb'
require './Question.rb'

class Game
  attr_accessor :name1, :name2
  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @player_turn = @player1.name
    puts @player_turn
  end

  def start
    while @player1.lives > 0 && @player2.lives > 0
      new_question
    end
  end

  def new_answer
    @player_answer = $stdin.gets.chomp.to_f
    @answer = (eval(@question).to_f).round(1)
    if (@player_answer == @answer)
      puts "#{@player_turn}: Yes! You got it right!"
    else 
      puts "#{@player_turn}: No no no... Sigh..."
      @solution = "The correct answer was:  #{(eval(@question).to_f).round(1)}!"
      puts @solution
      check_player_lives
    end
    puts "#{@player1} #{@player1.lives}/3 vs #{@player2} #{@player2.lives}/3"
    game_continue_or_end
  end

  def check_player_lives
    if @player_turn == @player1.name
      @player1.lose_life
    else
      @player2.lose_life
    end
  end
  
  def game_continue_or_end
    if @player1.lives.zero? || @player2.lives.zero?
        end_game
    else
        continue_game
    end
  end

  def continue_game
    puts "===== Next Round ====="
    @player_turn =  if @player_turn == @player1.name
                      @player2.name
                    else 
                      @player1.name
                    end
    new_question
  end

  def end_game
    if @player1.lives.zero?
      puts "#{@player2.name} wins!!! And still has #{@player2.lives}/3!"
      puts "Shame on you #{@player1.name}."
    exit(0)
    else
      puts "#{@player1.name} wins!!! And still has #{@player1.lives}/3!"
      puts "Shame on you #{@player2.name}."
    exit(0)
    end
  end
end