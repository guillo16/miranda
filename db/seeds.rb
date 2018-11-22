# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."
AnswerUser.destroy_all
Answer.destroy_all
Question.destroy_all
Video.destroy_all
puts "Starting seeds..."
pecesitos = Video.new(url: 'http://www.youtube.com/embed/_PKQMPNWkF4', title: '3 pecesitos se Fueron a Nadar - Canción Infantil', difficulty: 1, category: "Animation", transcript: '3 pecesitos se fueron a nadar
El más pequeñito se fue al fondo del mar
Vino un tiburón y le dijo: "Ven acá" [Tiburón]
[Pecesito] "No, no , no, no, no porque se enoja mi Mamá"

2 pecesitos se fueron a nadar
El más pequeñito se fue al fondo del mar
Vino un tiburón y le dijo: "Ven acá" [Tiburón]
[Pecesito] "No, no , no, no, no porque se enoja mi Mamá"

1 pecesito se fue a nadar
El pequeñito se fue al fondo del mar
Vino un tiburón y le dijo: "Ven acá" [Tiburón]
[Pecesito] "No, no , no, no, no porque se enoja mi Mamá"

3 pecesitos se fueron a nadar
El más pequeñito se fue al fondo del mar
Vino un tiburón y le dijo: "Ven acá" [Tiburón]
[Pecesito] "No, no , no, no, no porque se enoja mi Mamá"

2 pecesitos se fueron a nadar
El más pequeñito se fue al fondo del mar
Vino un tiburón y le dijo: "Ven acá" [Tiburón]
[Pecesito] "No, no , no, no, no porque se enoja mi Mamá"

1 pecesito se fue a nadar
El pequeñito se fue al fondo del mar
Vino un tiburón y le dijo: "Ven acá" [Tiburón]
[Pecesito] "No, no , no, no, no porque se enoja mi Mamá"')
pecesitos.save!
print pecesitos.save

q1 = Question.new(question: "Which of the fishes always swims to the bottom?", video: pecesitos)
q1.save!
a1_1 = Answer.new(answer: "The smallest one", correct: true, question: q1)
a1_1.save!
a1_2 = Answer.new(answer: "The bravest one", correct: false, question: q1)
a1_2.save!
a1_3 = Answer.new(answer: "The dumbest one", correct: false, question: q1)
a1_3.save!

q2 = Question.new(question: "What does the shark say to the fish?", video: pecesitos)
q2.save!
a2_1 = Answer.new(answer: "Help me", correct: false, question: q2)
a2_1.save!
a2_2 = Answer.new(answer: "Come with me", correct: false, question: q2)
a2_2.save!
a2_3 = Answer.new(answer: "Come here", correct: true, question: q2)
a2_3.save!

q3 = Question.new(question: "Why doesn't the fish go to the shark?", video: pecesitos)
q3.save!
a3_1 = Answer.new(answer: "Because it's scared", correct: false, question: q3)
a3_1.save!
a3_2 = Answer.new(answer: "Because its mom would get mad", correct: true, question: q3)
a3_2.save!
a3_3 = Answer.new(answer: "Because its mom called its name", correct: false, question: q3)
a3_3.save!
