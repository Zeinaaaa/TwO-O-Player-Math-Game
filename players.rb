#player will have a name and lives
#there will be a def to take a life and to check if dead
#new_question will ask a question and store the player answer and check if correct


class player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
  end

  def dead
    @lives
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(@name)
    print '= '
    @answer = $stdin.gets.chomp
    if new_question.check_answer?(@answer)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      wrong_answer
    end
  end
end
      
