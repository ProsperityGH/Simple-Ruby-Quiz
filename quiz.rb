puts "Welcome to the Ruby quiz!"

class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end


p1 = "\nWho created Ruby?\n(a)Matsumoto Daisuke\n(b)Shigeru Miyamoto\n(c)Yukihiro Matsumoto"
p2 = "\nIn what year was Ruby created?\n(a)1994\n(b)1995\n(c)1996"
p3 = "\nIs Ruby an interpreted or a compiled programming language?\n(a)Interpreted\n(b)Compiled"
p4 = "\nWhat is the name of the most popular framework made in Ruby?\n(a)Ruby on Track\n(b)Ruby on Rails\n(c)Ruby Rails"
p5 = "\nDoes Ruby understand 'Null'?\n(a)Yes\n(b)No"

questions = [
    Question.new(p1, "c"),
    Question.new(p2, "c"),
    Question.new(p3, "a"),
    Question.new(p4, "b"),
    Question.new(p5, "b"),
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer 
            score += 1
        end
    end
	puts "\nYou got #{score} out of #{questions.length()}!"
    puts "\nThanks for playing!"
end

run_test(questions)