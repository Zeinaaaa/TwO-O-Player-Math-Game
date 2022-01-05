#start with the question - the easiest
#ask and check the answer?


class question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask_question(name)
    puts "#{name}: What's #{@num1} + #{@num2}"
  end

  def check_answer?(input)
    @sum == input
  end
end