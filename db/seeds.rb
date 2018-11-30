# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."
Bookmark.destroy_all
AnswerUser.destroy_all
Answer.destroy_all
Question.destroy_all
Video.destroy_all
User.destroy_all

puts "Starting seeds..."
puts "Creating users"
 nicole = User.new(email: "nicole@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars2.githubusercontent.com/u/40607053?v=4", first_name:"Nicole", last_name:"Velasco" )
 nicole.save!
 marcus = User.new(email: "marcus@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars3.githubusercontent.com/u/43061218?v=4", first_name:"Marcus", last_name:"Loiseau" )
 marcus.save!
 astrid = User.new(email: "astrid@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars0.githubusercontent.com/u/5272850?v=4", first_name:"Astrid", last_name:"Bosch" )
 astrid.save!
 nick = User.new(email: "nick@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars1.githubusercontent.com/u/43245773?v=4", first_name:"Nick", last_name:"Blanco" )
 nick.save!
 tyson = User.new(email: "tyson@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars3.githubusercontent.com/u/42328396?v=4", first_name:"Tyson", last_name:"Hazard" )
 tyson.save!
 sebas = User.new(email: "sebas@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars3.githubusercontent.com/u/18401014?v=4", first_name:"Sebastian" , last_name:"Buffo" )
 sebas.save!
 antonio = User.new(email: "antonio@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars0.githubusercontent.com/u/42849274?v=4" , first_name:"Antonio", last_name:"Griman" )
 antonio.save!
 kayra = User.new(email: "kayra@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars1.githubusercontent.com/u/31418061?v=4", first_name:"kayra", last_name:"Czerniewicz" )
 kayra.save!
 nicolas = User.new(email: "nicolas@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars2.githubusercontent.com/u/33519903?v=4", first_name:"Nicolas", last_name:"Schroeder" )
 nicolas.save!
 sam = User.new(email: "sam@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/vrrmpdvrikpphnz7ysab.jpg", first_name:"Samuel", last_name:"Levy" )
 sam.save!
 bruno = User.new(email: "bruno@gmail.com", password:"abc123" , score: rand(0..25), subscribed: true, remote_photo_url:"https://avatars0.githubusercontent.com/u/16457173?v=4", first_name:"Bruno", last_name:"Parga" )
 bruno.save!

puts "Creating Videos"
pecesitos = Video.new(url: '_PKQMPNWkF4', title: '3 pecesitos se Fueron a Nadar - Canción Infantil', difficulty: 60, category: "Animation", region:"Argentina", transcript: '3 pecesitos se fueron a nadar
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

insatible = Video.new(url:"6EWnsFlf-kc", title: "Insatible trailer", difficulty: 370 , category:"Movies", region: "Spain", transcript: "

mi nombre es para ti

la escuela era una pesadilla lo gordo

para ti es enorme así que mientras mis

compañeros de clase perdían su

virginidad yo estaba en casa llenando

otro agujero huele a tocino

[Música]

todos los días me preguntaba cuánto más

podré soportar

y luego la super

ahora qué

dónde está para ti aquí estoy

tener mi mandíbula rota me hizo perder

más que mis vacaciones de verano es como

las películas que transcurren en una

escuela podría ser la antigua gorda que

se convertía en genio o en atleta o en

princesa no prefiero vengarme a

benny moré

está ciro que no lo sé

para ti está fuera de control

quiero golpearla en su cara de perro

quiero que les duela como me dolió a mí

yo quería más era insaciable

qué puedo decir esta historia está llena

de locuras

eso es lo hace divertido

son cuentos de parto")
insatible.save!
print insatible.save


q57 = Question.new(question: "What will happend when we have all the dolars of the world?", video: insatible)
q57.save!
a57_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q57)
a57_1.save!
a57_2 = Answer.new(answer: "Go to Canada", correct: false, question: q57)
a57_2.save!
a57_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q57)
a57_3.save!

q58 = Question.new(question: "How much are they paying the dolar currency?", video: insatible)
q58.save!
a58_1 = Answer.new(answer: "120", correct: false, question: q58)
a58_1.save!
a58_2 = Answer.new(answer: "200", correct: false, question: q58)
a58_2.save!
a58_3 = Answer.new(answer: "130", correct: true, question: q58)
a58_3.save!

q59 = Question.new(question: "The yankees has to be worried because we become...?", video: insatible)
q59.save!
a59_1 = Answer.new(answer: "Financier", correct: true, question: q59)
a59_1.save!
a59_2 = Answer.new(answer: "Police", correct: false, question: q59)
a59_2.save!
a59_3 = Answer.new(answer: "Attorney", correct: false, question: q59)
a59_3.save!


rey_leon = Video.new(url:"7rxwEfFMbaY", title: "El Rey León (2019)", difficulty: 170 , category:"Movies", region: "Spain", transcript: "
toda la tierra que baña la luz

es nuestro reino

el tiempo que dura el reinado de un rey

asciende y desciende como el sol

algún día

el sol se pondrá en mi reinado

y ascenderá siendo tuvo el nuevo rey

y vamos

dueña

recuerda")
rey_leon.save!
print rey_leon.save

q32 = Question.new(question: "How long does it last the reign of the king?", video: rey_leon)
q32.save!
a32_1 = Answer.new(answer: "A few month", correct: false, question: q32)
a32_1.save!
a32_2 = Answer.new(answer: "A few years", correct: false, question: q32)
a32_2.save!
a32_3 = Answer.new(answer: "All the eternity", correct: true, question: q32)
a32_3.save!

q33 = Question.new(question: "Complete: El ...... que dura el ...... de un rey", video: rey_leon)
q33.save!
a33_1 = Answer.new(answer: "dia//militar", correct: false, question: q33)
a33_1.save!
a33_2 = Answer.new(answer: "tiempo//reinado", correct: true, question: q33)
a33_2.save!
a33_3 = Answer.new(answer: "hora//principado", correct: false, question: q33)
a33_3.save!

q34 = Question.new(question: "Complete: y ...... siendo tuvo el ..... rey ", video: rey_leon)
q34.save!
a34_1 = Answer.new(answer: "cuando//principe", correct: false, question: q34)
a34_1.save!
a34_2 = Answer.new(answer: "ascendera//nuevo", correct: true, question: q34)
a34_2.save!
a34_3 = Answer.new(answer: "descendera//viejo", correct: false, question: q34)
a34_3.save!


luis_fonsi = Video.new(url: "TyHvyGVs42U", title: "Échame La Culpa", difficulty: 460, category: "Song", region:"Puerto Rico", transcript: "HEY FONSI

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

q4 = Question.new(question: "Who is t?", video: luis_fonsi)
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

ibiza = Video.new(url: "ESa9aB26ajc", title: "Ibiza netflix", difficulty: 590, category: "Comedy", region: "Spain", transcript: "

llevas con nosotros algún tiempo cuatro

años bien es hora de que te envía un

viaje de trabajo este fin de semana tres

días a barcelona españa nunca te he

mandado a ninguna parte puedo confiar en

ti por supuesto bueno pero no estamos

aquí para cotillear mientras tomamos con

assange chau es genial puedo cogerme

algún día libre y yo soy freelance

también estoy disponible en chicas es un

viaje de trabajo importante para mí no

vais a venir sé

estamos en una habitación de hotel y

podemos hacer lo que nos dé la gana

nicky estoy bien

segura si no sabía que eran dos camas

está riquísimo es maravilloso un pedazo

de artista soy leo encantado

vas a estar por aquí un rato

tuvimos una auténtica conexión de

mutxamel tu hombre leo west está en

ibiza esta noche no puedo volar a

imitaron con una reunión importante aquí

mañana por la noche esto es el destino

hay gente que pisa la luna otros curan

enfermedades tú te tiras a este dj sí ha

sido impresionante y bien explicado

si esto va a ser lo mejor del viaje ya

está muy bien

no dejo de pensar en ti

ya que si este podría ser mi última

oportunidad de verlo otra vez

hace más de 24 horas que no sé nada de

ti normalmente no suelo correr riesgos

nos vamos a ir de pierda

qué estás haciendo

aclara

lo tengo en la boca

límpiate limpias y limpias

no puedo ")

ibiza.save!
print ibiza.save

q62 = Question.new(question: "Complete: hay ..... que pisa la ..... otros curan", video: ibiza)
q62.save!
a62_1 = Answer.new(answer: " gente//luna ", correct: true, question: q62)
a62_1.save!
a62_2 = Answer.new(answer: "chicas//sol", correct: false, question: q62)
a62_2.save!
a62_3 = Answer.new(answer: "chicos//nubes", correct: false, question: q62)
a62_3.save!

q63 = Question.new(question: "What is the main phrase in Ibiza", video: ibiza)
q63.save!
a63_1 = Answer.new(answer: "Ibiza is the best place in the world", correct: false, question: q63)
a63_1.save!
a63_2 = Answer.new(answer: "Ibiza is where dreams come true", correct: false, question: q63)
a63_2.save!
a63_3 = Answer.new(answer: "Ibiza is the place where everybody come to party", correct: true, question: q63)
a63_3.save!

q64 = Question.new(question: "Complete: aquí para ..... mientras .... con", video: ibiza)
q64.save!
a64_1 = Answer.new(answer: "cottillear//tomamos", correct: true, question: q64)
a64_1.save!
a64_2 = Answer.new(answer: "charlar//comer", correct: false, question: q64)
a64_2.save!
a64_3 = Answer.new(answer: "gritar//saltar", correct: false, question: q64)
a64_3.save!



francella = Video.new(url: "t0YSTP6I-PU", title: "Pone a Francella - El psicologo", difficulty: 790, category: "Comedy", region: "Argentina", transcript: "
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
 print francella.save

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

tato = Video.new(url: "Gmx6saakELo", title: "Tato Bores: Los argentinos y el dólar", difficulty: 700, category: "Comedy", region: "Argentina", transcript: "cuando digo por otra parte cuando digo

por otra parte que estamos viendo un

gran momento de expansión monetaria de

los 313 que nosotros en lugar de pagar

desde ahora 30 40 50 70 80 90 mangos lo

estamos pagando a 135 y si vamos a pagar

a nosotros profesamos tipos ricos todos

compramos y todos apuntamos india que

tengamos muchos dólares podemos pegar un

corte fantástico genera fiscal por su

parte el dólar es la moneda

norteamericana el día que tengamos todos

los dólares del mundo iremos a eeuu con

la guita de ellos y nos va pero que

entregar al país

solo me explico cómo los yankees que son

tan vivos no se dan cuenta del peligro

que están corriendo con nosotros que

todos nos hemos vuelto financistas por

una razón muy especial justamente por

ella fíjate que antes con un tipo tenía

unos ahorritos poniente ejército habría

una fabriquita compraba un campito para

quedar gallinas o plantar tomates esa

cosa que hace la gente en los países

pobres

esteban martín donde está la casa de

cambio está todo el país parado frente a

las pizarras hay obreros albañiles

peones hasta el músico de artistas de

todo tipo que te trabajaban como locos

ahora de repente se han vuelto

economistas y cada uno está parado y con

un paquetito de dinero y en cuanto se

mueve la cotización de la pizarra entran

todos en patota y uno dice te pasa te

hace más fuerte tanto en patota

y salen corriendo y van a otra casa de

campo y antes de que muevan las pisadas

someten y los venden y así se pasan todo

el día pendiente y comprando y comprando

y vendiendo será la noche entra a la

casa mordido desechos caen muertos

arriba de un sillón que sepa que están

cuentan la guita llamar a la autoridad y

también a ver y hoy negar el 14 mangos y

no hice nada")
tato.save!
print tato.save

q10 = Question.new(question: "What will happend when we have all the dolars of the world?", video: tato)
q10.save!
a10_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q10)
a10_1.save!
a10_2 = Answer.new(answer: "Go to Canada", correct: false, question: q10)
a10_2.save!
a10_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q10)
a10_3.save!

q11 = Question.new(question: "How much are they paying the dolar currency?", video: tato)
q11.save!
a11_1 = Answer.new(answer: "120", correct: false, question: q11)
a11_1.save!
a11_2 = Answer.new(answer: "200", correct: false, question: q11)
a11_2.save!
a11_3 = Answer.new(answer: "130", correct: true, question: q11)
a11_3.save!

q12 = Question.new(question: "The yankees has to be worried because we become...?", video: tato)
q12.save!
a12_1 = Answer.new(answer: "Financier", correct: true, question: q12)
a12_1.save!
a12_2 = Answer.new(answer: "Police", correct: false, question: q12)
a12_2.save!
a12_3 = Answer.new(answer: "Attorney", correct: false, question: q12)
a12_3.save!

ismael = Video.new(url:"wSCUV7ysBbI", title: "Ismael Serrano - Papa Cuentame Otra Vez", difficulty: 870 , category:"Song", region: "Spain", transcript: "Papá

cuéntame otra vez ese cuento tan bonito
De gendarmes y fascistas, y estudiantes con flequillo
Y dulce guerrilla urbana en pantalones de campana
Y canciones de los Rolling, y niñas en minifalda

Papá cuéntame otra vez todo lo que os divertisteis
Estropeando la vejez a oxidados dictadores
Y cómo cantaste Al Vent y ocupasteis la Sorbona
En aquel mayo francés en los días de vino y rosas

Papá cuéntame otra vez esa historia tan bonita
De aquel guerrillero loco que mataron en Bolivia
Y cuyo fusil ya nadie se atrevió a tomar de nuevo
Y como desde aquel día todo parece más feo

Papá cuéntame otra vez que tras tanta barricada
Y tras tanto puño en alto y tanta sangre derramada
Al final de la partida no pudisteis hacer nada
Y bajo los adoquines no había arena de playa

Fue muy dura la derrota, todo lo que se soñaba
Se pudrió en los rincones, se cubrió de telarañas
Y ya nadie canta Al Vent, ya no hay locos ya no hay parias
Pero tiene que llover aún sigue sucia la plaza

Queda lejos aquel mayo, queda lejos Saint Denis
Que lejos queda Jean Paul Sartre, muy lejos aquel París
Sin embargo a veces pienso que al final todo dio igual
Las ostias siguen cayendo sobre quien habla de más

Y siguen los mismos muertos podridos de crueldad
Ahora mueren en Bosnia los que morían en Vietnam
Ahora mueren en Bosnia los que morían en Vietnam
Ahora mueren en Bosnia los que morían en Vietnam")

ismael.save!
print ismael.save

q13 = Question.new(question: "What is under the cobblestones?", video: ismael)
q13.save!
a13_1 = Answer.new(answer: "Dust", correct: false, question: q13)
a13_1.save!
a13_2 = Answer.new(answer: "Beach sand", correct: true, question: q13)
a13_2.save!
a13_3 = Answer.new(answer: "Stones", correct: false, question: q13)
a13_3.save!

q14 = Question.new(question: "Complete: 'Las .... siguen .... sobre quien habla de mas'", video: ismael)
q14.save!
a14_1 = Answer.new(answer: "ostias/cayendo", correct: true, question: q14)
a14_1.save!
a14_2 = Answer.new(answer: "derrota/soñando", correct: false, question: q14)
a14_2.save!
a14_3 = Answer.new(answer: "paredes/saltando", correct: false, question: q14)
a14_3.save!

q15 = Question.new(question: "Complete: '...... la vejez a oxidados ......'", video: ismael)
q15.save!
a15_1 = Answer.new(answer: "Estropeando/dictadores", correct: true, question: q15)
a15_1.save!
a15_2 = Answer.new(answer: "Arruinando/corredores", correct: false, question: q15)
a15_2.save!
a15_3 = Answer.new(answer: "Alegrando/saltadores", correct: false, question: q15)
a15_3.save!

chavo = Video.new(url:"eB8sgEgvh7E", title: "El campeón de los brutos | El Chavo del 8", difficulty: 270 , category:"Comedy", region: "Mexico", transcript: "
  Don ramon:cuantos anos crees que tengo yo
  Chavo: cincuenta ,
  Don ramon: exacto y si te fijas bien cincuenta anos no son muchos lo que pasa es que.. chanfle oye como supiste que yo tenia exactamente 50 anos ,
  Chavo: por que el pandero de la esquina tiene 25 y es medio mula.
  Don ramon: si es verdad... oye chavo tu sabes lo que vas a ser tu cuando tengas mi edad
  Chavo: si un viejito
  Don ramon: oye chavo cuantos anos tienes tu
  Chavo: ocho por que?
  Don ramon: porque no me explico como se puede ser tan bruto en tan poco tiempo
  Chavo: no se usted tardo mas?
  Don ramon: tal vez tal vez pero de bruto a bruto yo te voy a decir quien es el campeon
  Chavo: usted
  Don ramon: queee?
  Chavo: si hace ratito usted me dijo que usted fue el campeon cuando era joven?
  Don ramon: pero el campeon de boliche ahorita estamos averiguando quien es el campeon de los brutos?
  Quico: yo que?
  Don ramon: ni hablar chavo te presento al campeon
  Quico: yo soy el campeon?
  Don ramon: y del mundo
  Quico: y del mundo?
  Don ramon: y de otras partes mijo
  Quico: Quico Quico ra ra ra")

chavo.save!
print chavo.save

q16 = Question.new(question: "What is under the cobblestones?", video: chavo)
q16.save!
a16_1 = Answer.new(answer: "Dust", correct: false, question: q16)
a16_1.save!
a16_2 = Answer.new(answer: "Beach sand", correct: true, question: q16)
a16_2.save!
a16_3 = Answer.new(answer: "Stones", correct: false, question: q16)
a16_3.save!

q17 = Question.new(question: "Complete: 'Las .... siguen .... sobre quien habla de mas'", video: chavo)
q17.save!
a17_1 = Answer.new(answer: "ostias/cayendo", correct: true, question: q17)
a17_1.save!
a17_2 = Answer.new(answer: "derrota/soñando", correct: false, question: q17)
a17_2.save!
a17_3 = Answer.new(answer: "paredes/saltando", correct: false, question: q17)
a17_3.save!

q18 = Question.new(question: "Complete: '...... la vejez a oxidados ......'", video: chavo)
q18.save!
a18_1 = Answer.new(answer: "Estropeando/dictadores", correct: true, question: q18)
a18_1.save!
a18_2 = Answer.new(answer: "Arruinando/corredores", correct: false, question: q18)
a18_2.save!
a18_3 = Answer.new(answer: "Alegrando/saltadores", correct: false, question: q18)
a18_3.save!

messi = Video.new(url:"ZKunzZLrnfA", title: "Leo Messi Nigeria 1-2 Argentina Mundial 2018", difficulty: 670 , category:"Sports", region: "Argentina", transcript: "

la verdad no puedo hablar

por horas

te queremos más bien te amamos

estaba casado antes del partido o en los

últimos 67 que no entraba nada la verdad

que estábamos estábamos confiados de que

lo íbamos a sacar aquí vamos a ganar

este partido pero no nos esperábamos la

la complicación es que nos mataran y

tenga que ir a buscar el partido con lo

que eso significa nerviosismo en la

ansiedad

el tiempo todo pero la verdad que es

maravilloso poder ganarlo de esta manera

que haya hecho el marco pero carece por

por todo lo que perdió para estar acá y

bueno es una una alegría merecida

después de todo todo este tiempo que

venimos pasando con con sufrimiento que

hubiera sido una injusticia grande que

esta generación tan linda tan cerca de

la gloria que tuvo varias oportunidades

se fuera en primera ronda y hubiera sido

tremendo para ustedes la verdad que sí

que hubiese sido un final muy feo y muy

injusto para para todos nosotros

como elegimos el pueblo el partido y

merecimos ganar el primer partido la

bronca de del penal

después el segundo hasta el 10 estuvimos

bien después empezamos a desordenar a

dejar espacios

y regalamos dos goles innecesario que

hizo que lleguemos tan complicado este

partido pero pero bueno

sabía que ellos está con nosotros la

última milagro de mus en la semana

milagro en el área dos veces mal no

podía salir algo bueno tiene que pasar

nos ilusionamos leo toda esta gente que

vino acá vino a verte campeón a vos

agradecer a toda esta gente que hace un

sacrificio enorme por estar acá por

llenar las canchas del primer partido

pasando con el segundo por esto una cosa

impresionante la gente que está en

argentina viviendo con pidiéndolo con

nosotros en ningún momento se le

cuestionara la cabeza por toda la

volverse que dicen y una vez más

demostró que que la camiseta de la

selección está por encima de cualquier

personaje

hasta ahí es el mejor de todos

ahí está apareció otra vez lo amamos")
messi.save!
print messi.save

q19 = Question.new(question: "What is under the cobblestones?", video: messi)
q19.save!
a19_1 = Answer.new(answer: "Dust", correct: false, question: q19)
a19_1.save!
a19_2 = Answer.new(answer: "Beach sand", correct: true, question: q19)
a19_2.save!
a19_3 = Answer.new(answer: "Stones", correct: false, question: q19)
a19_3.save!

q20 = Question.new(question: "Complete: 'Las .... siguen .... sobre quien habla de mas'", video: messi)
q20.save!
a20_1 = Answer.new(answer: "ostias/cayendo", correct: true, question: q20)
a20_1.save!
a20_2 = Answer.new(answer: "derrota/soñando", correct: false, question: q20)
a20_2.save!
a20_3 = Answer.new(answer: "paredes/saltando", correct: false, question: q20)
a20_3.save!

q21 = Question.new(question: "Complete: '...... la vejez a oxidados ......'", video: messi)
q21.save!
a21_1 = Answer.new(answer: "Estropeando/dictadores", correct: true, question: q21)
a21_1.save!
a21_2 = Answer.new(answer: "Arruinando/corredores", correct: false, question: q21)
a21_2.save!
a21_3 = Answer.new(answer: "Alegrando/saltadores", correct: false, question: q21)
a21_3.save!

riquelme = Video.new(url:"ljxPbqoHJ_k", title: "Gol de Riquelme a River", difficulty: 470 , category:"Sports", region: "Argentina", transcript: "te queremos más bien te amamos

estaba casado antes del partido o en los

últimos 67 que no entraba nada la verdad

que estábamos estábamos confiados de que

lo íbamos a sacar aquí vamos a ganar

este partido pero no nos esperábamos la

la complicación es que nos mataran y

tenga que ir a buscar el partido con lo

que eso significa nerviosismo en la

ansiedad

el tiempo todo pero la verdad que es

maravilloso poder ganarlo de esta manera

que haya hecho el marco pero carece por

por todo lo que perdió para estar acá y

bueno es una una alegría merecida

después de todo todo este tiempo que

venimos pasando con con sufrimiento que

hubiera sido una injusticia grande que

esta generación tan linda tan cerca de

la gloria que tuvo varias oportunidades

se fuera en primera ronda y hubiera sido

tremendo para ustedes la verdad que sí

que hubiese sido un final muy feo y muy

injusto para para todos nosotros

como elegimos el pueblo el partido y

merecimos ganar el primer partido la

bronca de del penal")

riquelme.save!
print riquelme.save

q23 = Question.new(question: "What will happend when we have all the dolars of the world?", video: riquelme)
q23.save!
a23_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q23)
a23_1.save!
a23_2 = Answer.new(answer: "Go to Canada", correct: false, question: q23)
a23_2.save!
a23_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q23)
a23_3.save!

q24 = Question.new(question: "How much are they paying the dolar currency?", video: riquelme)
q24.save!
a24_1 = Answer.new(answer: "120", correct: false, question: q24)
a24_1.save!
a24_2 = Answer.new(answer: "200", correct: false, question: q24)
a24_2.save!
a24_3 = Answer.new(answer: "130", correct: true, question: q24)
a24_3.save!

q25 = Question.new(question: "The yankees has to be worried because we become...?", video: riquelme)
q25.save!
a25_1 = Answer.new(answer: "Financier", correct: true, question: q25)
a25_1.save!
a25_2 = Answer.new(answer: "Police", correct: false, question: q25)
a25_2.save!
a25_3 = Answer.new(answer: "Attorney", correct: false, question: q25)
a25_3.save!

escobar = Video.new(url:"GHM8fYrK-SM", title: "pablo escobar amenasa a lara", difficulty: 670 , category:"News", region: "Colombia", transcript: "

a la opinión pública que el señor

ministro de justicia tiene un plazo de

24 horas para que presente las pruebas

concretas de la sindicación que me hizo

en el día de ayer en la cámara de

representantes e incluso con el

narcotráfico siempre ha asegurado que

minero no tiene vínculos con el

narcotráfico dinero

que todos conocen las inversiones en el

campo de la industria en el campo de la

ganadería y en el campo en la

construcción primero que asesinarlo

moralmente del lugar

pensaban que de esa forma lo quemaban

por chantajear el señor ministro de

justicia me acusó a mí en forma injusta

y yo lo he denunciado penalmente porque

ha incurrido en el delito de calumnia

que el código penal colombiano castiga

de 1 a 4 años de prisión

se trata de una escalada del

narcotráfico que hoy busca la salida de

un ministro del gabinete porque lo

considera incómodo para sus aviesos

siempre")

escobar.save!
print escobar.save

q26 = Question.new(question: "What will happend when we have all the dolars of the world?", video: escobar)
q26.save!
a26_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q26)
a26_1.save!
a26_2 = Answer.new(answer: "Go to Canada", correct: false, question: q26)
a26_2.save!
a26_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q26)
a26_3.save!

q27 = Question.new(question: "How much are they paying the dolar currency?", video: escobar)
q27.save!
a27_1 = Answer.new(answer: "120", correct: false, question: q27)
a27_1.save!
a27_2 = Answer.new(answer: "200", correct: false, question: q27)
a27_2.save!
a27_3 = Answer.new(answer: "130", correct: true, question: q27)
a27_3.save!

q28 = Question.new(question: "The yankees has to be worried because we become...?", video: escobar)
q28.save!
a28_1 = Answer.new(answer: "Financier", correct: true, question: q28)
a28_1.save!
a28_2 = Answer.new(answer: "Police", correct: false, question: q28)
a28_2.save!
a28_3 = Answer.new(answer: "Attorney", correct: false, question: q28)
a28_3.save!

mexico = Video.new(url:"OJAWFys0ZvA", title: "Como Novio De Pueblo", difficulty: 470 , category:"Movies", region: "Mexico", transcript: "gracias a todos por venir pero ayer ya

pague la hora completa en la pinza usar

para llegar a misa

o la pregunta que se siente bien

eso lo que es una intervención es neto

querido prima desde que la desgraciada

de yolanda te dejo has estado actuando

muy raro y estamos dejándolo todo para

ayudarte este es el plan nos vamos los

tres a vallarta pasarla de nuevos como

cuando éramos chavos
[Risas]
son las últimas personas que esperaban

ver hoy queremos unas vacaciones y que

mejor que bailar también ya diego lo

dejaron plantada en el altar y suspiro a

la mierda entonces hicimos una

intervención

está soltera

yo también pero con el vídeo siguió

a lo que quiero estar contigo por favor

ya me empiece a conocer

qué chingados aquí esta vieja pero no

necesita perdonarte

llevar a mantenernos juntos a kárbala

madre

muchas cosas pinchas en la vida

entonces estarán muy sólidas

no

te evitas de un negocio máximo tres años

la perra")
mexico.save!
print mexico.save

q29 = Question.new(question: "What will happend when we have all the dolars of the world?", video: mexico)
q29.save!
a29_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q29)
a29_1.save!
a29_2 = Answer.new(answer: "Go to Canada", correct: false, question: q29)
a29_2.save!
a29_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q29)
a29_3.save!

q30 = Question.new(question: "How much are they paying the dolar currency?", video: mexico)
q30.save!
a30_1 = Answer.new(answer: "120", correct: false, question: q30)
a30_1.save!
a30_2 = Answer.new(answer: "200", correct: false, question: q30)
a30_2.save!
a30_3 = Answer.new(answer: "130", correct: true, question: q30)
a30_3.save!

q31 = Question.new(question: "The yankees has to be worried because we become...?", video: mexico)
q31.save!
a31_1 = Answer.new(answer: "Financier", correct: true, question: q31)
a31_1.save!
a31_2 = Answer.new(answer: "Police", correct: false, question: q31)
a31_2.save!
a31_3 = Answer.new(answer: "Attorney", correct: false, question: q31)
a31_3.save!

borges = Video.new(url:"rLetEcu5rmM", title: "Poema de los dones", difficulty: 470 , category:"Poetry", region: "Argentina", transcript: "Nadie rebaje a lágrima o reproche
Esta declaración de la maestría
De Dios, que con magnífica ironía
Me dio a la vez los libros y la noche.

De esta ciudad de libros hizo dueños
A unos ojos sin luz, que sólo pueden
Leer en las bibliotecas de los sueños
Los insensatos párrafos que ceden

Las albas a su afán. En vano el día
Les prodiga sus libros infinitos,
Arduos como los arduos manuscritos
Que perecieron en Alejandría.

De hambre y de sed (narra una historia griega)
Muere un rey entre fuentes y jardines;
Yo fatigo sin rumbo los confines
De esa alta y honda biblioteca ciega.

Enciclopedias, atlas, el Oriente
Y el Occidente, siglos, dinastías,
Símbolos, cosmos y cosmogonías
Brindan los muros, pero inútilmente.

Lento en mi sombra, la penumbra hueca
Exploro con el báculo indeciso,
Yo, que me figuraba el Paraíso
Bajo la especie de una biblioteca.

Algo, que ciertamente no se nombra
Con la palabra azar, rige estas cosas;
Otro ya recibió en otras borrosas
Tardes los muchos libros y la sombra.

Al errar por las lentas galerías
Suelo sentir con vago horror sagrado
Que soy el otro, el muerto, que habrá dado
Los mismos pasos en los mismos días.

¿Cuál de los dos escribe este poema
De un yo plural y de una sola sombra?
¿Qué importa la palabra que me nombra
si es indiviso y uno el anatema?

Groussac o Borges, miro este querido
Mundo que se deforma y que se apaga
En una pálida ceniza vaga
Que se parece al sueño y al olvido.")

borges.save!
print borges.save

q35 = Question.new(question: "What will happend when we have all the dolars of the world?", video: borges)
q35.save!
a35_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q35)
a35_1.save!
a35_2 = Answer.new(answer: "Go to Canada", correct: false, question: q35)
a35_2.save!
a35_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q35)
a35_3.save!

q36 = Question.new(question: "How much are they paying the dolar currency?", video: borges)
q36.save!
a36_1 = Answer.new(answer: "120", correct: false, question: q36)
a36_1.save!
a36_2 = Answer.new(answer: "200", correct: false, question: q36)
a36_2.save!
a36_3 = Answer.new(answer: "130", correct: true, question: q36)
a36_3.save!

q37 = Question.new(question: "The yankees has to be worried because we become...?", video: borges)
q37.save!
a37_1 = Answer.new(answer: "Financier", correct: true, question: q37)
a37_1.save!
a37_2 = Answer.new(answer: "Police", correct: false, question: q37)
a37_2.save!
a37_3 = Answer.new(answer: "Attorney", correct: false, question: q37)
a37_3.save!

despacito = Video.new(url:"kJQP7kiw5Fk", title: "Luis Fonsi - Despacito ", difficulty: 670 , category:"Song", region: "Puerto Rico", transcript: "
  Sí, sabes que ya llevo un rato mirándote
Tengo que bailar contigo hoy (DY)
Vi que tu mirada ya estaba llamándome
Muéstrame el camino que yo voy (Oh)
Tú, tú eres el imán y yo soy el metal
Me voy acercando y voy armando el plan
Solo con pensarlo se acelera el pulso (Oh yeah)
Ya, ya me está gustando más de lo normal
Todos mis sentidos van pidiendo más
Esto hay que tomarlo sin ningún apuro
Despacito
Quiero respirar tu cuello despacito
Deja que te diga cosas al oído
Para que te acuerdes si no estás conmigo
Despacito
Quiero desnudarte a besos despacito
Firmo en las paredes de tu laberinto
Y hacer de tu cuerpo todo un manuscrito (sube, sube, sube)
(Sube, sube)
Quiero ver bailar tu pelo
Quiero ser tu ritmo
Que le enseñes a mi boca
Tus lugares favoritos (favoritos, favoritos baby)
Déjame sobrepasar tus zonas de peligro
Hasta provocar tus gritos
Y que olvides tu apellido (Diridiri, dirididi Daddy)
Si te pido un beso ven dámelo
Yo sé que estás pensándolo
Llevo tiempo intentándolo
Mami, esto es dando y dándolo
Sabes que tu corazón conmigo te hace bom, bom
Sabes que esa beba está buscando de mi bom, bom
Ven prueba de mi boca para ver cómo te sabe
Quiero, quiero, quiero ver cuánto amor a ti te cabe
Yo no tengo prisa, yo me quiero dar el viaje
Empecemos lento, después salvaje
Pasito a pasito, suave suavecito
Nos vamos pegando poquito a poquito
Cuando tú me besas con esa destreza
Veo que eres malicia con delicadeza
Pasito a pasito, suave suavecito
Nos vamos pegando, poquito a poquito
Y es que esa belleza es un rompecabezas
Pero pa montarlo aquí tengo la pieza
Despacito
Quiero respirar tu cuello despacito
Deja que te diga cosas al oído
Para que te acuerdes si no estás conmigo
Despacito
Quiero desnudarte a besos despacito
Firmo en las paredes de tu laberinto
Y hacer de tu cuerpo todo un manuscrito (sube, sube, sube)
(Sube, sube)
Quiero ver bailar tu pelo
Quiero ser tu ritmo
Que le enseñes a mi boca
Tus lugares favoritos (favoritos, favoritos baby)
Déjame sobrepasar tus zonas de peligro
Hasta provocar tus gritos
Y que olvides tu apellido
Despacito
Vamos a hacerlo en una playa en Puerto Rico
Hasta que las olas griten '¡ay, bendito!'
Para que mi sello se quede contigo
Pasito a pasito, suave suavecito
Nos vamos pegando, poquito a poquito
Que le enseñes a mi boca
Tus lugares favoritos (favoritos, favoritos baby)
Pasito a pasito, suave suavecito
Nos vamos pegando, poquito a poquito
Hasta provocar tus gritos
Y que olvides tu apellido (DY)
Despacito ")

despacito.save!
print despacito.save

q38 = Question.new(question: "What will happend when we have all the dolars of the world?", video: despacito)
q38.save!
a38_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q38)
a38_1.save!
a38_2 = Answer.new(answer: "Go to Canada", correct: false, question: q38)
a38_2.save!
a38_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q38)
a38_3.save!

q39 = Question.new(question: "How much are they paying the dolar currency?", video: despacito)
q39.save!
a39_1 = Answer.new(answer: "120", correct: false, question: q39)
a39_1.save!
a39_2 = Answer.new(answer: "200", correct: false, question: q39)
a39_2.save!
a39_3 = Answer.new(answer: "130", correct: true, question: q39)
a39_3.save!

q40 = Question.new(question: "The yankees has to be worried because we become...?", video: despacito)
q40.save!
a40_1 = Answer.new(answer: "Financier", correct: true, question: q40)
a40_1.save!
a40_2 = Answer.new(answer: "Police", correct: false, question: q40)
a40_2.save!
a40_3 = Answer.new(answer: "Attorney", correct: false, question: q40)
a40_3.save!

bicicleta = Video.new(url:"-UV0QGLmYys", title: "La bicicleta", difficulty: 870 , category:"Song", region: "Colombia", transcript: "
  Nada voy a hacer
Rebuscando en las heridas del pasado
No voy a perder
Yo no quiero ser un tipo de otro lado
A tu manera, descomplicado
En una bici que te lleve a todos lados
Un vallenato desesperado
Una cartica que yo guardo donde te escribí
Que te sueño y que te quiero tanto
Que hace rato está mi corazón
Latiendo por ti, latiendo por ti
La que yo guardo donde te escribí
Que te sueño y que te quiero tanto
Que hace rato está mi corazón
Latiendo por ti, latiendo por ti
Puedo ser feliz
Caminando relajada entre la gente
Yo te quiero así
Y me gustas porque eres diferente
A mi manera, despelucado
En una bici que me lleva a todos lados
Un vallenato desesperado
Una cartica que yo guardo donde te escribí
Que te sueño y que te quiero tanto
Que hace rato está mi corazón
Latiendo por ti, latiendo por ti
La que yo guardo donde te escribí
Que te sueño y que te quiero tanto
Que hace rato está mi corazón
Latiendo por ti, latiendo por ti
Ella es la favorita, la que canta en la zona
Se mueve en su cadera como un barco en las olas
Tiene los pies descalzos como un niño que adora
Y sus cabellos largos son un sol que te antoja
Le gusta que le digan que es la niña, la lola
Le gusta que la miren cuando ella baila sola
Le gusta más la casa, que no pasen las horas
Le gusta Barranquilla, le gusta Barcelona
Lleva, llévame en tu bicicleta
Óyeme, Carlos, llévame en tu bicicleta
Quiero que recorramos juntos esa zona
Desde Santa Marta hasta La Arenosa
Lleva, llévame en tu bicicleta
Pa' que juguemos bola 'e trapo allá en Chancleta
Que si a Pique algún día le muestras el Tayrona
Después no querrá irse pa' Barcelona
A mi manera, descomplicado
En una bici que me lleva a todos lados
Un vallenato desesperado
Una cartica que yo guardo donde te escribí
Que te sueño y que te quiero tanto
Que hace rato está mi corazón
Latiendo por ti, latiendo por ti
La que yo guardo donde te escribí
Que te sueño y que te quiero tanto
Que hace rato está mi corazón
Latiendo por ti, latiendo por ti
Lleva, llévame en tu bicicleta
Óyeme, Carlos, llévame en tu bicicleta
Que sí a Pique algún día le muestras el Tayrona
Después no querrá irse pa' Barcelona
Lleva, llévame en tu bicicleta
Óyeme, Carlos, llévame en tu bicicleta
Que si a mi Pique tú le muestras el Tayrona
Después no querrá irse pa' Barcelona")

bicicleta.save!
print bicicleta.save

q41 = Question.new(question: "What will happend when we have all the dolars of the world?", video: bicicleta)
q41.save!
a41_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q41)
a41_1.save!
a41_2 = Answer.new(answer: "Go to Canada", correct: false, question: q41)
a41_2.save!
a41_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q41)
a41_3.save!

q42 = Question.new(question: "How much are they paying the dolar currency?", video: bicicleta)
q42.save!
a42_1 = Answer.new(answer: "120", correct: false, question: q42)
a42_1.save!
a42_2 = Answer.new(answer: "200", correct: false, question: q42)
a42_2.save!
a42_3 = Answer.new(answer: "130", correct: true, question: q42)
a42_3.save!

q43 = Question.new(question: "The yankees has to be worried because we become...?", video: bicicleta)
q43.save!
a43_1 = Answer.new(answer: "Financier", correct: true, question: q43)
a43_1.save!
a43_2 = Answer.new(answer: "Police", correct: false, question: q43)
a43_2.save!
a43_3 = Answer.new(answer: "Attorney", correct: false, question: q43)
a43_3.save!

betty = Video.new(url:"W5zZemc7Nwc", title: "Yo soy Betty", difficulty: 670 , category:"Comedy", region: "Colombia", transcript: "

bueno buenas artes

[Música]

siéntese por favor vete ahí gracias

[Música]

bien como ya les informe de acabo de

hablar con berti sobre la situación

actual de la empresa la situación que ya

conoce bastante mejor que cualquiera de

nosotros y está de acuerdo en colaborar

los

[Música]

por otra parte todos sabemos que ha

habido graves roces entre nosotros se

han producido resentimientos yo les

quiero pedir el favor de que dejemos de

lado todas las recriminaciones

tenemos que pensar en el futuro y dejar

de cuestionarnos sobre lo que betty y

armando hicieron o dejaron de hacer en

el pasado

nos queda por delante seis meses de

arduo trabajo durante los cuales espero

poder sacar la empresa adelante

les pido a todos la máxima colaboración

bueno ahora la pregunta de oro

otero hecho

con las con sus condiciones para darnos

su colaboración

y sacarnos de la crisis en la que

armando con su colaboración por supuesto

nos dejó sumidos

y condiciones

[Música]

la verdad yo preferiría esperar a mis

abogados para que ellos nos digan lo que

debemos hacer así a mí también me

parecería interesante que el doctor

santamaría estuviera en esta reunión

debe estar por llegar ante problemas

pero sus siglas que va advertir que la

presencia de los abogados en esta junta

no quiere decir que tengamos ningún

pleito entre nosotros bien en tan solo a

asesorarnos unas cuestiones jurídicas")
betty.save!
print betty.save

q44 = Question.new(question: "What will happend when we have all the dolars of the world?", video: betty)
q44.save!
a44_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q44)
a44_1.save!
a44_2 = Answer.new(answer: "Go to Canada", correct: false, question: q44)
a44_2.save!
a44_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q44)
a44_3.save!

q45 = Question.new(question: "How much are they paying the dolar currency?", video: betty)
q45.save!
a45_1 = Answer.new(answer: "120", correct: false, question: q45)
a45_1.save!
a45_2 = Answer.new(answer: "200", correct: false, question: q45)
a45_2.save!
a45_3 = Answer.new(answer: "130", correct: true, question: q45)
a45_3.save!

q46 = Question.new(question: "The yankees has to be worried because we become...?", video: betty)
q46.save!
a46_1 = Answer.new(answer: "Financier", correct: true, question: q46)
a46_1.save!
a46_2 = Answer.new(answer: "Police", correct: false, question: q46)
a46_2.save!
a46_3 = Answer.new(answer: "Attorney", correct: false, question: q46)
a46_3.save!

ralph = Video.new(url:"SIz_LUlcWkg", title: "Ralph rompe internet", difficulty: 270 , category:"Movies", region: "Spain", transcript: "00:02
vamos enchufarte eso

por qué

wifi o wifi

hola hay alguien aquí ya estamos online

ah

[Música]

grupos solo

normal como si nada

adiós a la grasa con este truquito esta

señora quiere conocerte así el eslogan

gento like

señoras y señores

necesito un número de tarjeta perdón es

un número de tarjeta debe usted 27001

dólares

bueno a correr

este título es de locos volvamos a cazar

a compañeros

internet se derrumba estoy que lo flipo

aquí

esto es lo que se llama la red oscura

hay mucho personaje siniestro sobre todo

no mires a su hermano pequeño tiene un

hermano pequeño

tú qué miras")
ralph.save!
print ralph.save

q47 = Question.new(question: "What will happend when we have all the dolars of the world?", video: ralph)
q47.save!
a47_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q47)
a47_1.save!
a47_2 = Answer.new(answer: "Go to Canada", correct: false, question: q47)
a47_2.save!
a47_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q47)
a47_3.save!

q48 = Question.new(question: "How much are they paying the dolar currency?", video: ralph)
q48.save!
a48_1 = Answer.new(answer: "120", correct: false, question: q48)
a48_1.save!
a48_2 = Answer.new(answer: "200", correct: false, question: q48)
a48_2.save!
a48_3 = Answer.new(answer: "130", correct: true, question: q48)
a48_3.save!

q49 = Question.new(question: "The yankees has to be worried because we become...?", video: ralph)
q49.save!
a49_1 = Answer.new(answer: "Financier", correct: true, question: q49)
a49_1.save!
a49_2 = Answer.new(answer: "Police", correct: false, question: q49)
a49_2.save!
a49_3 = Answer.new(answer: "Attorney", correct: false, question: q49)
a49_3.save!


congelada = Video.new(url:"FmrnYJGQQug", title: "Frozen", difficulty: 270 , category:"Movies", region: "Spain", transcript: "

verano en la ciudad de adén verlos

no podría ser más cálido no podría ser

más soleado pero eso está a punto de

cambiar para siempre

está totalmente congelada

menuda bendición en julio la tierra está

cubierta de nieves eternas

engañada

si no hacemos algo moriremos congelados

es una auténtica

yo soy tú hola a todos

y hemos empezado con mal pie yo sé cómo

detener este interno

y es que esto está recién pintado es que

te criaste en un establo

para mí son recuperarán

es importante

a la cabeza y de cráneo bros yo tengo

cráneo

y no sólo tenemos que sobrevivir a esta

no es una ventisca

es mi hermana

habría estado bien saberlo y lanzar

muñecos de nieve

pero dónde vas

hay personas por las que empecé

en el reino de la nación

yo siento la tienda las piernas

esas son mis piernas hoy voy a

tratamiento pero próximamente en cines")

congelada.save!
print congelada.save

q50 = Question.new(question: "What will happend when we have all the dolars of the world?", video: congelada)
q50.save!
a50_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q50)
a50_1.save!
a50_2 = Answer.new(answer: "Go to Canada", correct: false, question: q50)
a50_2.save!
a50_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q50)
a50_3.save!

q51 = Question.new(question: "How much are they paying the dolar currency?", video: congelada)
q51.save!
a51_1 = Answer.new(answer: "120", correct: false, question: q51)
a51_1.save!
a51_2 = Answer.new(answer: "200", correct: false, question: q51)
a51_2.save!
a51_3 = Answer.new(answer: "130", correct: true, question: q51)
a51_3.save!

q52 = Question.new(question: "The yankees has to be worried because we become...?", video: congelada)
q52.save!
a52_1 = Answer.new(answer: "Financier", correct: true, question: q52)
a52_1.save!
a52_2 = Answer.new(answer: "Police", correct: false, question: q52)
a52_2.save!
a52_3 = Answer.new(answer: "Attorney", correct: false, question: q52)
a52_3.save!

elite = Video.new(url:"72kTH4erwIY", title: "Elite netflix", difficulty: 370 , category:"Movies", region: "Spain", transcript: "
  tengo que hacerte unas preguntas

de aquí saldrán los líderes del mañana

son los nuevos pues suerte vais a

necesitar paraíso chaval

hola me llamo samuel he dicho el

camarero

parece un ministro

con quien haga falta

esa gente nunca hará nada bueno

que me puedes decir de esto por qué

creemos que se trata de la arma homicida

no realmente

creo que los demás creen que somos

es lo que ocultamos a los de modas

a lo mejor no es que te parece

es que no tengo nada que confesar

yo sé

y nunca vas a conseguir estar con ella

me oyes

cuando la pólvora se junta con el juego

te lo puede pasar una cosa

explota

no sé

esto no es un puto jugador

tienes alguna pregunta ")
elite.save!
print elite.save

q54 = Question.new(question: "What will happend when we have all the dolars of the world?", video: elite)
q54.save!
a54_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q54)
a54_1.save!
a54_2 = Answer.new(answer: "Go to Canada", correct: false, question: q54)
a54_2.save!
a54_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q54)
a54_3.save!

q55 = Question.new(question: "How much are they paying the dolar currency?", video: elite)
q55.save!
a55_1 = Answer.new(answer: "120", correct: false, question: q55)
a55_1.save!
a55_2 = Answer.new(answer: "200", correct: false, question: q55)
a55_2.save!
a55_3 = Answer.new(answer: "130", correct: true, question: q55)
a55_3.save!

q56 = Question.new(question: "The yankees has to be worried because we become...?", video: elite)
q56.save!
a56_1 = Answer.new(answer: "Financier", correct: true, question: q56)
a56_1.save!
a56_2 = Answer.new(answer: "Police", correct: false, question: q56)
a56_2.save!
a56_3 = Answer.new(answer: "Attorney", correct: false, question: q56)
a56_3.save!


distrito = Video.new(url: "2dOvYY7_G8A", title: "Distriro Salvaje", difficulty: 290, category: "Movies", region: "Mexico", transcript: "
hace cuánto se entregó dos meses

si como se llama jon gómez esto hombre

llegué a conocerlo ya su historia del

legendario

está seguro de la privilegiada clase

corrupta tienen sus días contados y

puede incomodar a mucha gente

el asesinato de la contralora nos puso

presión a los dos

sabemos que lo es o para combatirlos

necesitamos usar sus mismas armas de

guerra ejércitos de un solo

fiscal que encontramos pero de guerra

creo que lo único que sé hacer en la

vida

de una hora de la noche

y ahora estoy buscando lo que buscamos

qué es

una segunda oportunidad o sea que en

esta ciudad es un pobre juego le

ofrecemos una cosa mejor acá pero en el

papel y usted me trabaja para nosotros

que hasta la policía que tiene que andar

contratando guerrilleros

hoy empieza su nueva vida john gómez su

jefa de giselle le reporta sólo a ella

si yo hago eso su familia

es triste que se acuerde de una cosa la

cal y si se habla mucho de paz pero lo

que a tanto es una selva muy parecida a

la existencia a cada escapada

lo más importante no se olvide nunca de

qué lado está")

distrito.save!
print distrito.save

q66 = Question.new(question: "What will happend when we have all the dolars of the world?", video: distrito)
q66.save!
a66_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q66)
a66_1.save!
a66_2 = Answer.new(answer: "Go to Canada", correct: false, question: q66)
a66_2.save!
a66_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q66)
a66_3.save!

q67 = Question.new(question: "How much are they paying the dolar currency?", video: distrito)
q67.save!
a67_1 = Answer.new(answer: "120", correct: false, question: q67)
a67_1.save!
a67_2 = Answer.new(answer: "200", correct: false, question: q67)
a67_2.save!
a67_3 = Answer.new(answer: "130", correct: true, question: q67)
a67_3.save!

q68 = Question.new(question: "The yankees has to be worried because we become...?", video: distrito)
q68.save!
a68_1 = Answer.new(answer: "Financier", correct: true, question: q68)
a68_1.save!
a68_2 = Answer.new(answer: "Police", correct: false, question: q68)
a68_2.save!
a68_3 = Answer.new(answer: "Attorney", correct: false, question: q68)
a68_3.save!

ozuna = Video.new(url: "bx-fuY7LpSU", title: "Vaina loca", difficulty: 190, category: "Song", region: "Puerto Rico", transcript: "
  Aura
No va a ser tan fácil
Aunque me esquives como quiera
Tras de ti, voy tras de ti (yeh)
Tú tienes todo lo que quiero para mí
Y tú tan sola por ahí
Detrás de ti voy a seguir
Yo sé que lo bueno toma tiempo, lady

Es que me gustas tú na' má'
No me importan las demás
Una vaina loca que me da
Que por más que intento no se va

Me gustas tú na' má'
No importan las demás
Una vaina loca que me da
Que por más que intento no se va

[Ozuna]
Me gustas tú na' má', no sé disimular
La música que hago sólo en ti me hace pensar
Única, una rosa yo me la quiero robar
Sencilla, bonita, no se tiene que maquillar
Me mata el piquete
Baila duro y le mete
Con nadie se compromete
Y menos si tú le promete
Tiene lo que quiero
Me tira que yo le llego
No sé disimular, bailo contigo y yo me entrego
Me mata el piquete
Baila duro y le mete
Con nadie se compromete
Y menos si tú le promete
Tiene lo que quiero
Me tira que yo le llego
No sé disimular, bailo contigo y yo me entrego

[Ozuna y Manuel Turizo]
Es que me gustas tú na' má'
No me importan las demás
Una vaina loca que me da
Que por más que intento no se va

Es que me gustas tú na' má'
No me importan las demás
Una vaina loca que me da
Que por más que intento no se va

[Manuel Turizo]
Porque cuando te tengo cerquita
Me entra una vaina loca que después no se me quita
Es que en mi lista tú eres la favorita
Tú eres la única que este hombre necesita
Baby tú eres lo que yo quiero
Vale más que el dinero
Yo viajo el mundo entero
Si es por ti no hay pero
Siento que por ti desespero
Cuando no te tengo más

[Ozuna y Manuel Turizo]
Es que me gustas tú na' má'
No me importan las demás
Una vaina loca que me da
Que por más que intento no se va

Me gustas tú na' má'
No me importan las demás
Una vaina loca que me da
Que por más que intento no se va")

ozuna.save!
print ozuna.save

q69 = Question.new(question: "What will happend when we have all the dolars of the world?", video: ozuna)
q69.save!
a69_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q69)
a69_1.save!
a69_2 = Answer.new(answer: "Go to Canada", correct: false, question: q69)
a69_2.save!
a69_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q69)
a69_3.save!

q70 = Question.new(question: "How much are they paying the dolar currency?", video: ozuna)
q70.save!
a70_1 = Answer.new(answer: "120", correct: false, question: q70)
a70_1.save!
a70_2 = Answer.new(answer: "200", correct: false, question: q70)
a70_2.save!
a70_3 = Answer.new(answer: "130", correct: true, question: q70)
a70_3.save!

q71 = Question.new(question: "The yankees has to be worried because we become...?", video: ozuna)
q71.save!
a71_1 = Answer.new(answer: "Financier", correct: true, question: q71)
a71_1.save!
a71_2 = Answer.new(answer: "Police", correct: false, question: q71)
a71_2.save!
a71_3 = Answer.new(answer: "Attorney", correct: false, question: q71)
a71_3.save!

reik = Video.new(url: "JyqD_zfXfi8", title: "Me niego", difficulty: 290, category: "Song", region: "Puerto Rico", transcript: "
  Es difícil abrir mis ojos y ya no verte
Tu olor en la cama, aún sigue intacto
Te he buscado en mis sueños, deseando tenerte
Y no encuentro tu rostro, por más que trato
Aún quedan tus retratos, en cada rincón de la casa
Y el silencio me habla de ti, es que solo hay tanto espacio
Desde que no estás, daría todo lo que hoy me queda
Por tenerte, por que vuelvas
Es que me niego a perderte, a más nunca verte
Me niego a aceptar que lo nuestro ya se acabó
Es que me niego a perderte, a más nunca verte
Me niego a aceptar que lo nuestro ya se acabó
No puedo asimilar
Que ya tú no estás, sin ti nada es igual
Sé que por el mundo no hay otra similar
Que tú me hiciste que no te puedo olvidar
Tú me quieres a tu manera
Mi mente quisiera, que otra me quisiera
Mi corazón dice que por ti espera
Por que volvieras, daría lo que fuera
Pero es que tú chica, con ese piquete
Sé que me olvidaste y en tus ojos veo que mientes
ahora puedo decir, sufrir amor lo que se siente
Te sacaré de mi mente y eso será de repente
Pero es que tú, chica, con ese piquete
Sé que me olvidaste y en tus ojos veo que mientes
Ahora puedo decir, sufrir amor lo que se siente
Te sacaré de mi mente y eso será de repente
Y es que me niego a perderte, a más nunca verte
Me niego a aceptar que lo nuestro ya se acabó
Es que me niego a perderte, a más nunca verte
Me niego a aceptar que lo nuestro ya se acabó
Me está matando la soledad
Duele saber que ya no estás
Quiero pensar, que todo
Esto es mentira
Y que al llamarte contestarás
Y que al llegar la noche me besarás
Aún podemos intentarlo
No te alejes de mi vida
Yo sigo aquí confundido y solo
Llorando de noche, muriendo de día
Viviendo esta agonía, no puedo entender
Que ya no seas mía, el circulo se cierra
Y el dolor me entierra
Qué difícil es vivir en esta guerra
Me niego, aunque digas que estoy ciego
Desde que te fuiste soy un andariego
A todo compromiso tarde le llego
Distraído de tu foto no me despego
Si tú eres mi vida, por qué me liquidas
Yo no provoqué tu partida
Necesito tu olor, necesito tu calor
Necesito verte encima de mi en ropa interior
Aún quedan tus retratos, en cada rincón de la casa
Y el silencio me habla de ti, es que solo hay tanto espacio
Desde que no estás, daría todo lo que hoy me queda
Por tenerte, por que vuelvas
Es que me niego a perderte, a más nunca verte
Me niego a aceptar que lo nuestro ya se acabó
Es que me niego a perderte, a más nunca verte
Me niego a aceptar que lo nuestro ya se acabo (que lo nuestro ya se acabó)")
reik.save!
print reik.save

q72 = Question.new(question: "What will happend when we have all the dolars of the world?", video: reik)
q72.save!
a72_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q72)
a72_1.save!
a72_2 = Answer.new(answer: "Go to Canada", correct: false, question: q72)
a72_2.save!
a72_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q72)
a72_3.save!

q73 = Question.new(question: "How much are they paying the dolar currency?", video: reik)
q73.save!
a73_1 = Answer.new(answer: "120", correct: false, question: q73)
a73_1.save!
a73_2 = Answer.new(answer: "200", correct: false, question: q73)
a73_2.save!
a73_3 = Answer.new(answer: "130", correct: true, question: q73)
a73_3.save!

q74 = Question.new(question: "The yankees has to be worried because we become...?", video: reik)
q74.save!
a74_1 = Answer.new(answer: "Financier", correct: true, question: q74)
a74_1.save!
a74_2 = Answer.new(answer: "Police", correct: false, question: q74)
a74_2.save!
a74_3 = Answer.new(answer: "Attorney", correct: false, question: q74)
a74_3.save!

balbin = Video.new(url: "eAqeed4INns", title: "Bonita", difficulty: 100, category: "Song", region: "Puerto Rico", transcript: "
  Dayme y el high
Ella se tarda arreglándose un par de horas
Llama a su amiga, no le gusta salir sola
Y de la noche dejarse llevar, oh oh oh
Se pone caliente cuando escucha este perreo
Y yo también me pongo caliente si la veo
Ella es bien bonita, por ahí tan sólita
Con esa cinturita, bailándome cerquita
Se pone caliente, cuando escucha este perreo
Y yo también me pongo caliente si la veo
Ella es bien bonita, por ahí tan sólita
Con esa cinturita, bailándome cerquita
Que se prepare pa la fiesta
Que la cintura ta
Me peca que él prende y que suba esa tela
De la que tú estás fincado, hasta aquí a ti te duele
Tú eres mi bebé, no te me salgas de en frente
Báilalo fuerte, qué importa la gente
Al carrete le importa la gente
To' eso pa' mí, bailándo te di fuerte
mañana te diré
Y esto no para, hasta que estés sin conciencia
Que fuiste la paciencia y te suelten las piernas
Hoy pa' mami te dé, tú la entiendes
Es adicción que me pone y me tiene
Se pone caliente cuando escucha este perreo
Y yo también me pongo caliente si la veo
Ella es tan bonita, por ahí tan sólita
Con esa cinturita, bailándome cerquita
Se pone caliente, cuando escucha este perreo
Y yo también me pongo caliente si la veo
Ella es tan bonita, por ahí tan sólita
Con esa cinturita, bailándome cerquita
Ella pide que la toque
Aveces que la bese
Me manda razones que cuando amanece
Ya viene encendida, la tengo en la mira
Fiera de noche, una santa de día
Baby, el ritmo se adueña de tu piel
A ti te gusta y a mí también
Que nos pasemos la noche dándole
Baby, el ritmo se adueña de tu piel
A ti te gusta y a mí también
Que nos pasemos la noche dándole (oye esto)
Si tú pides perreo, toma perreo
Báilalo, no no, no tengas miedo
Tienes la pa' que lo sigas sin líimite
Y si tú quieres, igual yo quiero, pégate
Vamos a hacerlo sin
Aquí no hay que esconderse
Solo tienes que moverte y encenderte
Y si tú quieres, igual yo quiero, pégate
Vamos a hacerlo sin
Aquí no hay que esconderse
Pégate
Bien chula
Se pone coqueta la nena
Ella sabe que está buena
Y bien chula, fuera del planeta ella es
Se pone caliente cuando escucha este perreo
Y yo también me pongo caliente si la veo
Ella es tan bonita, por ahí tan sólita
Con esa cinturita, bailándome cerquita
Se pone caliente, cuando escucha este perreo
Y yo también me pongo caliente si la veo
Ella es tan bonita, por ahí tan sólita
Con esa cinturita, bailándome cerquita
Viva la music (viva la music)
Son Jowell y Randy (Jowell y Randy)
J Balvin
Dayme y el High
Dímelo parce
Estamos de vuelta
Let Go
Sky
El Cyborg
Háblame Ronald
Kapital Music baby")

balbin.save!
print balbin.save

q75 = Question.new(question: "What will happend when we have all the dolars of the world?", video: balbin)
q75.save!
a75_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q75)
a75_1.save!
a75_2 = Answer.new(answer: "Go to Canada", correct: false, question: q75)
a75_2.save!
a75_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q75)
a75_3.save!

q76 = Question.new(question: "How much are they paying the dolar currency?", video: balbin)
q76.save!
a76_1 = Answer.new(answer: "120", correct: false, question: q76)
a76_1.save!
a76_2 = Answer.new(answer: "200", correct: false, question: q76)
a76_2.save!
a76_3 = Answer.new(answer: "130", correct: true, question: q76)
a76_3.save!

q77 = Question.new(question: "The yankees has to be worried because we become...?", video: balbin)
q77.save!
a77_1 = Answer.new(answer: "Financier", correct: true, question: q77)
a77_1.save!
a77_2 = Answer.new(answer: "Police", correct: false, question: q77)
a77_2.save!
a77_3 = Answer.new(answer: "Attorney", correct: false, question: q77)
a77_3.save!

chino = Video.new(url: "0yr75-gxVtM", title: "Me voy enamorando", difficulty: 100, category: "Song", region: "Puerto Rico", transcript: "
  Oh ouho
Me voy enamorando
Los del romantiqueo, oh ouho
Me voy, me voy enamorando, oh ouho
Chino, Chino y Nacho
Me voy enamorando (Nacho)
Master sellers
Farruko, Tainy
Apenas nos vimos
Sé que nos sentimos brutal
Y a mí me tiene mal
Y tu sonreías
Seguro sabías
Lo que a los dos nos iba a pasar
(Yo sé que tu también sientes lo mismo)
Esta es mi forma de decirte hoy
Que donde tú me digas voy
Hay un lugar tan especial (tan especial)
En donde yo contigo quisiera estar
Ese lugar tan especial
Donde si quieres nos besamos
Y me voy enamorando
Me voy enamorando oh ouho
Me voy enamorando oh ouho
Me voy, me voy enamorando oh ouho
Yeah, Chino y Nacho
Me voy enamorando oh ouho
Farruko
Yo no sé si es el escote en tu espalda
O si será lo corta e' tu falda
Esas curvas tienen un hook que a mí me atrapa
Sobre tus alas yo despego mi vuelo
Bailar contigo pegaito yo quiero
Tú me llevas en tus brazos hasta el cielo
Ese lugar, tan especial
Donde yo contigo quisiera estar
Ese lugar, tan especial
Donde si quieres nos besamos
Y me voy enamorando
Me voy enamorando oh ouho
Me voy enamorando oh ouho
Me voy, me voy enamorando oh ouho
Me voy enamorando oh ouho (Nacho)
Brutal, brutal
Tú me pareces genial
Tú tiene' un swing
Y un movimiento demasiado animal
Tú me provocas un sentimiento de carácter sensual
Tú eres una señorita original (wow)
Usted por la galaxia me tiene volando
Yo siento que las nubes estoy acariciando
Y es que de ti me voy enamorando
Me voy enamorando oh ouho
(Enamorando de ti mi amor)
Me voy enamorando oh ouho
(No te separes de mi calor)
Me voy enamorando oh ouho
(Que de mi mundo tú eres el sol)
Me voy enamorando oh ouho
(A donde vayas contigo voy)
Eey
No te sorprendas estas escuchando a Chino y Nacho
Gozando en el estudio junto a los muchachos
Motiff, Farruko
Chino y Nacho bebe
Pa’ que goces tu beba
Romántico, sí
Pero le metemos brutal, brutal
Me voy enamorando oh ouho
(Esto es música pal mundo)
Me voy enamorando oh ouho
(Tu reconoces un hit cuando lo oyes)
Chino y Nacho, Farruko")
 chino.save!
 print chino.save

q78 = Question.new(question: "What will happend when we have all the dolars of the world?", video: chino)
q78.save!
a78_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q78)
a78_1.save!
a78_2 = Answer.new(answer: "Go to Canada", correct: false, question: q78)
a78_2.save!
a78_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q78)
a78_3.save!

q79 = Question.new(question: "How much are they paying the dolar currency?", video: chino)
q79.save!
a79_1 = Answer.new(answer: "120", correct: false, question: q79)
a79_1.save!
a79_2 = Answer.new(answer: "200", correct: false, question: q79)
a79_2.save!
a79_3 = Answer.new(answer: "130", correct: true, question: q79)
a79_3.save!

q80 = Question.new(question: "The yankees has to be worried because we become...?", video: chino)
q80.save!
a80_1 = Answer.new(answer: "Financier", correct: true, question: q80)
a80_1.save!
a80_2 = Answer.new(answer: "Police", correct: false, question: q80)
a80_2.save!
a80_3 = Answer.new(answer: "Attorney", correct: false, question: q80)
a80_3.save!

carlos = Video.new(url: "Mtau4v6foHA", title: "Robarte un beso", difficulty: 200, category: "Song", region: "Colombia", transcript: "Son muchos años que pasaron sin decir te quiero
Y en verdad te quiero
Pero encuentro formas de engañar mi corazón
Son muchos años que pasaron sin robarte un beso
Solo quiero un beso,
y por esa boca no me importa ser ladrón
No puede ser que no he encontrado todavía las palabras
Y en esa noche no dije nada
No puede ser que en un segundo me perdí en tu mirada
Cuando por dentro yo te gritaba
Déjame robarte un beso que me llegue hasta el alma
Como un vallenato de esos viejos que nos gustaban
Sé que sientes mariposas, yo también sentí sus alas
Déjame robarte un beso que te enamore y tú no te vayas
Déjame robarte un beso que me llegue hasta el alma
Como un vallenato de esos viejos que nos gustaban
Sé que sientes mariposas, yo también sentí sus alas
Déjame robarte un beso que te enamore y tú no te vayas
Déjame robarte el corazón
Déjame escribirte una canción
Déjame que con un beso nos perdamos los dos
Déjame robarte el corazón
Déjame subirle a esta canción
Para que bailemos juntos como nadie bailó
Déjame robarte un beso que me llegue hasta el alma
Como un vallenato de esos viejos que nos gustaban
Se que sientes mariposas, yo también sentí sus alas
Déjame robarte un beso que te enamore y tú no te vayas
Yo sé que a ti te gusta que yo te cante así
Que tú te pones seria pero te hago reír
Que se que tu me quieres.. Por qué tú eres así
Y cuando estamos juntos ya no se que decir
Yo sé que a ti te gusta yo te cante así
Que tú te pones seria pero te hago reír
Que se que tú me quieres.. Porque tú eres así
Y cuando estamos juntos ya no se que decir
Déjame robarte un beso que me llegue hasta el alma
Como un vallenato de esos viejos que nos gustaban
Sé que sientes mariposas (se que sientes mariposas)
Yo también sentí sus alas (yo también sentí sus alas)
Déjame robarte un beso que te enamore y tú no te vayas
Déjame robarte un beso que me llegue hasta el alma
Como un vallenato de esos viejos que nos gustaban
Sé que sientes mariposas, yo también sentí sus alas
Déjame robarte un beso que te enamore
Y tú no te vayas")

carlos.save!
print carlos.save


q81 = Question.new(question: "What will happend when we have all the dolars of the world?", video: carlos)
q81.save!
a81_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q81)
a81_1.save!
a81_2 = Answer.new(answer: "Go to Canada", correct: false, question: q81)
a81_2.save!
a81_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q81)
a81_3.save!

q82 = Question.new(question: "How much are they paying the dolar currency?", video: carlos)
q82.save!
a82_1 = Answer.new(answer: "120", correct: false, question: q82)
a82_1.save!
a82_2 = Answer.new(answer: "200", correct: false, question: q82)
a82_2.save!
a82_3 = Answer.new(answer: "130", correct: true, question: q82)
a82_3.save!

q83 = Question.new(question: "The yankees has to be worried because we become...?", video: carlos)
q83.save!
a83_1 = Answer.new(answer: "Financier", correct: true, question: q83)
a83_1.save!
a83_2 = Answer.new(answer: "Police", correct: false, question: q83)
a83_2.save!
a83_3 = Answer.new(answer: "Attorney", correct: false, question: q83)
a83_3.save!

ozunaa = Video.new(url: "TWsq3QPv_Oc", title: "Luz apaga", difficulty: 200, category: "Song", region: "Puerto Rico", transcript: "
  Eh, eh, aaah
Lu-Lu-Lunay, yeah
Tráeme una dosis de champaña
Que hay una baby que la mente a mí me daña
Y yo no sé, una mirada que engaña
Parece buena pero conozco su' mañana
Luz apagá que ella le caiga (Que ella le caiga)
Lo más que a mí me gusta e' como ella me baila (Me baila)
Le agarro la cintura y la pongo de espalda (Wo-ho)
Perdona si mis manos entran por tu falda, yeah
Luz apagá que ella le caiga (Que ella le caiga)
Lo más que a mi me gusta e' como ella me baila (Baila)
Le agarro la cintura y la pongo de espalda (Wo-ho)
Perdona si mis manos entran por tu falda, yeah'
Bebé, sólo quiero invitarte a la pista
Pa' que baile y tu cuerpo me resalte
Tiene una mezcla de belleza con arte
No quiere conocerme, sólo quiere disfrutarse
La noche, lo que está pasando e' que esta prende candela
Que quema, tiene los poderes en el sistema (Wo-oh)
Pero se me olvida que yo tengo a mi nena
Y si se entera, puede ser que enseguida ella me deja
Si como lo mueve me lo hace
No soy responsable de lo que pase
Y es que se te ve, de lejos se ve
Que no eres la misma si te pego a la pared
Sata en to'a la' pose', ron duraste doce
Hacemos la' pose' y después no me conoce
Ya yo lo sé, está' bebiendo Rosé
Buscándome la vuelta pa' que abajo yo te rose
Y es que yo te quiero sólo pa' mí
He tenido a otra' y no son así
No creas to' lo que dicen por ahí
Tú sabes que estoy sólo, sólo pa' ti (bebé)
Es que yo te quiero sólo pa' mí
He tenido a otra' y no son así
No creas to' lo que dicen por ahí
Tú sabes que estoy sólo, sólo pa' ti, baby")
ozunaa.save!
print ozunaa.save

q84 = Question.new(question: "What will happend when we have all the dolars of the world?", video: ozunaa)
q84.save!
a84_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q84)
a84_1.save!
a84_2 = Answer.new(answer: "Go to Canada", correct: false, question: q84)
a84_2.save!
a84_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q84)
a84_3.save!

q85 = Question.new(question: "How much are they paying the dolar currency?", video: ozunaa)
q85.save!
a85_1 = Answer.new(answer: "120", correct: false, question: q85)
a85_1.save!
a85_2 = Answer.new(answer: "200", correct: false, question: q85)
a85_2.save!
a85_3 = Answer.new(answer: "130", correct: true, question: q85)
a85_3.save!

q86 = Question.new(question: "The yankees has to be worried because we become...?", video: ozunaa)
q86.save!
a86_1 = Answer.new(answer: "Financier", correct: true, question: q86)
a86_1.save!
a86_2 = Answer.new(answer: "Police", correct: false, question: q86)
a86_2.save!
a86_3 = Answer.new(answer: "Attorney", correct: false, question: q86)
a86_3.save!

