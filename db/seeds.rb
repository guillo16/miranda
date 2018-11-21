# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."
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

luis_fonsi = Video.new(url: "https://www.youtube.com/embed/TyHvyGVs42U", title: "Échame La Culpa ,Luis Fonsi, Demi Lovato - regeton", difficulty: 3, category: "Videoclip", transcript: "HEY FONSI

OH NO, QUE PASA DEMI

 TENGO EN ESTA HISTORIA ALGO QUE CONFESAR

 YA ENTENDÍ MUY BIEN QUE FUE LO QUE PASÓ

 Y AUNQUE DUELA TANTO TENGO QUE ACEPTAR

 QUE TU NO ERES LA MALA QUE EL MALO SOY YO

  NO ME CONOCISTE NUNCA DE VERDAD

  YA SE FUE LA MAGIA QUE TE ENAMOR ?

  Y ES QUE NO QUISIERA ESTAR EN TU LUGAR

  PORQUE TU ERROR SOLO FUE CONOCERME

  NO ERES TU, NO ERES TU, NO ERES TU

  SOY YO, SOY YO

  NO TE QUIERO HACER SUFRIR

  ES MEJOR OLVIDAR Y DEJARLO ASÍ, ASÍ

  ÉCHAME LA CULPA

  NO ERES TU, NO ERES TU, NO ERES TU

  SOY YO, SOY YO

  NO TE QUIERO HACER SUFRIR

  ES MEJOR OLVIDAR Y DEJARLO ASÍ, ASÍ

  ÉCHAME LA CULPA

  OK I DON'T REALLY REALLY WANT TO FIGHT ANYMORE

  I DON'T REALLY REALLY WANT TO FAKE IT NO MORE

  MAYBE LIKE THE BEATLES BABY JUST LET IT BE

  SO COME ON PUT THE BLAME ON ME YEAH

  I DON'T REALLY REALLY WANT TO FIGHT ANYMORE

  I DON'T REALLY REALLY WANT TO FAKE IT NO MORE

  MAYBE LIKE THE BEATLES BABY JUST LET IT BE

  SO COME ON PUT THE BLAME ON ME

  NO ERES TU, NO ERES TU, NO ERES TU

  SOY YO, SOY YO

  NO TE QUIERO HACER SUFRIR

  ES MEJOR OLVIDAR Y DEJARLO ASÍ, ASÍ

  ÉCHAME LA CULPA

  NO ERES TU, NO ERES TU, NO ERES TU

  SOY YO, SOY YO

  NO TE QUIERO HACER SUFRIR

 ES MEJOR OLVIDAR Y DEJARLO ASÍ, ASÍ

 ÉCHAME LA CULPA

 SOLAMENTE TE FALTA UN BESO

 SOLAMENTE TE FALTA UN BESO

 ESE BESO QUE SIEMPRE TE PROMETÍ

 ÉCHAME LA CULPA

 SOLAMENTE TE FALTA UN BESO

 SOLAMENTE TE FALTA UN BESO

 ESE BESO QUE SIEMPRE TE PROMETÍ

 ÉCHAME LA CULPA

 OK I DON'T REALLY REALLY WANT TO FIGHT ANYMORE

 I DON'T REALLY REALLY WANT TO FAKE IT NO MORE

 MAYBE LIKE THE BEATLES BABY JUST LET IT BE

 SO COME ON PUT THE BLAME ON ME YEAH

 I DON'T REALLY REALLY WANT TO FIGHT ANYMORE

 I DON'T REALLY REALLY WANT TO FAKE IT NO MORE

 MAYBE LIKE THE BEATLES BABY JUST LET IT BE

 SO COME ON PUT THE BLAME ON ME

 NO ERES TU, NO ERES TU, NO ERES TU

 SOY YO, SOY YO

 NO TE QUIERO HACER SUFRIR

 ES MEJOR OLVIDAR Y DEJARLO ASÍ, ASÍ

 ÉCHAME LA CULPA

 NO ERES TU, NO ERES TU, NO ERES TU

 SOY YO, SOY YO

 NO TE QUIERO HACER SUFRIR

 ES MEJOR OLVIDAR Y DEJARLO ASÍ, ASÍ

 ÉCHAME LA CULPA

 SOLAMENTE TE FALTA UN BESO

 SOLAMENTE TE FALTA UN BESO

 ESE BESO QUE SIEMPRE TE PROMETÍ

 ÉCHAME LA CULPA

 SOLAMENTE TE FALTA UN BESO

 SOLAMENTE TE FALTA UN BESO

 ESE BESO QUE SIEMPRE TE PROMETÍ

 ÉCHAME LA CULPA ")

luis_fonsi.save!
print luis_fonsi.save

q4 = Question.new(question: "Which of the fishes always swims to the bottom?", video: luis_fonsi)
q4.save!
a4_1 = Answer.new(answer: "The smallest one", correct: true, question: q4)
a4_1.save!
a4_2 = Answer.new(answer: "The bravest one", correct: false, question: q4)
a4_2.save!
a4_3 = Answer.new(answer: "The dumbest one", correct: false, question: q4)
a4_3.save!

q5 = Question.new(question: "What does the shark say to the fish?", video: luis_fonsi)
q5.save!
a5_1 = Answer.new(answer: "Help me", correct: false, question: q5)
a5_1.save!
a5_2 = Answer.new(answer: "Come with me", correct: false, question: q5)
a5_2.save!
a5_3 = Answer.new(answer: "Come here", correct: true, question: q5)
a5_3.save!

q6 = Question.new(question: "Why doesn't the fish go to the shark?", video: luis_fonsi)
q6.save!
a6_1 = Answer.new(answer: "Because it's scared", correct: false, question: q6)
a6_1.save!
a6_2 = Answer.new(answer: "Because its mom would get mad", correct: true, question: q6)
a6_2.save!
a6_3 = Answer.new(answer: "Because its mom called its name", correct: false, question: q6)
a6_3.save!

francella = Video.new(url: "https://www.youtube.com/embed/t0YSTP6I-PU", title: "Pone a Francella - El psicologo", difficulty: 4, category: "Comedy", transcript: "
patricia cuénteme cuál es su problema
esta terapia de pareja el problema de
doctores que estamos al borde del
divorcio vamos a trabajar en eso que les
está pasando a ver eres un desastre no
me tiene en cuenta a hamás no me tienen
cuenta a las 8 de la mañana y vuelve a
las 11 de la noche pero tengo 50 que es
como un perro
salí del trabajo a 6 de la tarde me está
engañando con su secretaria
es una mocosa es una guerra con manita
por el novio manita que te dice lo que
quiere es un robo bárbaro tiene 20 años
tiene más viaje de negocio con vos que
lo que sostuve en toda mi vida
que le preguntaba no el tema de qué
en todos los matrimonios hay problemas
de los patricios y permanentes debe
haber más confianza un poquito más de
comunicación es importantísimo hay que
tener la mente abierta dejar fluir a eso
soy yo por ejemplo los fines de semana
como la pasan sola los viernes me gusta
jugar al fútbol que es un pecado y eso
es un pecado
por supuesto que pero vuelvo el partido
del escándalo para mis amigos
son diablos donde hablo le hablo no lo
sigo por toda la casa y yo le explico
que me siento sola doctor pero me
contestó
es una técnica barriola perico también
ha venido acá
a la maravillosa ricardo me encantó
confieso que
no lo puedo creer la verdad nos vamos a
matar
reconozco que me pongo pesada que los
sábados los sábados por ejemplo salvador
estamos a la mañana me levanto trató de
un acercamiento de algo con él y nada
ese va jugar golf todo el día doctor te
gusta el golf me encanta me vuelvo loco
aunque lo que sé no hay otro deporte no
no no
una de las nuevas juntos a la cancha a
la cancha todo controlado")
 francella.save!
 puts francella.save

q7 = Question.new(question: "Which of the fishes always swims to the bottom?", video: francella)
q7.save!
a7_1 = Answer.new(answer: "The smallest one", correct: true, question: q7)
a7_1.save!
a7_2 = Answer.new(answer: "The bravest one", correct: false, question: q7)
a7_2.save!
a7_3 = Answer.new(answer: "The dumbest one", correct: false, question: q7)
a7_3.save!

q8 = Question.new(question: "What does the shark say to the fish?", video: francella)
q8.save!
a8_1 = Answer.new(answer: "Help me", correct: false, question: q8)
a8_1.save!
a8_2 = Answer.new(answer: "Come with me", correct: false, question: q8)
a8_2.save!
a8_3 = Answer.new(answer: "Come here", correct: true, question: q8)
a8_3.save!

q9 = Question.new(question: "Why doesn't the fish go to the shark?", video: francella)
q9.save!
a9_1 = Answer.new(answer: "Because it's scared", correct: false, question: q9)
a9_1.save!
a9_2 = Answer.new(answer: "Because its mom would get mad", correct: true, question: q9)
a9_2.save!
a9_3 = Answer.new(answer: "Because its mom called its name", correct: false, question: q9)
a9_3.save!

