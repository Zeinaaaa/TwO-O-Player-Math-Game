


class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(@name)
    print '= '
    @answer = $stdin.gets.chomp.to_i
    if new_question.check_answer?(@answer)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      wrong_answer
    end
  end
end
      
