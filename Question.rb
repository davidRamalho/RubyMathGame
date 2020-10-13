  def new_question
    @num1 = rand 1..20
    @num2 = rand 1..20
    ops = %w(+ - / *)
    @op1 = ops.sample
    @question = "#{@num1.to_f} #{@op1} #{@num2.to_f}"
    @expression = "#{@player_turn}, what does #{@num1.to_f} #{@op1} #{@num2.to_f} equal?"
    puts @expression
    new_answer
  end
