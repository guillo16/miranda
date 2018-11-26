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
puts "Starting seeds..."
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

luis_fonsi = Video.new(url: "TyHvyGVs42U", title: "Échame La Culpa ,Luis Fonsi, Demi Lovato - regeton", difficulty: 460, category: "Song", region:"Puerto Rico", transcript: "HEY FONSI

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

chavo = Video.new(url:"eB8sgEgvh7E", title: "El campeón de los brutos | El Chavo del 8", difficulty: 870 , category:"Comedy", region: "Mexico", transcript: "
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

