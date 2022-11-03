class Question
  attr_accessor :propmt, :answer

  def initialize(propmt, answer)
    @propmt = propmt
    @answer = answer
  end
end
p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
  Question.new(p1, 'a'),
  Question.new(p2, 'c'),
  Question.new(p3, 'b')
]

def run_test(questions)
  answer = ''
  score = 0
  questions.each do |question|
    puts question.propmt
    answer = gets.chomp
    score += 1 if answer == question.answer
  end
  puts "you have got " + score.to_s + "/" + questions.length.to_s
end
run_test(questions)
