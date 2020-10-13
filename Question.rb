class Question
  def initialize 
    num = (1..10).to_a
    @num1 = num.shuffle[0]
    @num2 = num.shuffle[0]
    ops = %w(+ - / *)
    @op1 = ops.sample
    @question = "#{@num1.to_f} #{@op1} #{@num2.to_f}"
    expression = "What does #{@num1.to_f} #{@op1} #{@num2.to_f} equal?"
    puts expression
  end
  
  def check
    solution = "The correct answer is #{(eval(@question).to_f).round(1)}!"
    puts solution
  end
end