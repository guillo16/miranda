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

rey_leon = Video.new(url:"7rxwEfFMbaY", title: "El Rey León (2019)", difficulty: 170 , category:"Movies", region: "Spain", transcript: "00:14
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

q32 = Question.new(question: "What will happend when we have all the dolars of the world?", video: rey_leon)
q32.save!
a32_1 = Answer.new(answer: "Go to USA and buy some stuffs", correct: false, question: q32)
a32_1.save!
a32_2 = Answer.new(answer: "Go to Canada", correct: false, question: q32)
a32_2.save!
a32_3 = Answer.new(answer: "Go to USA and buy the country", correct: true, question: q32)
a32_3.save!

q33 = Question.new(question: "How much are they paying the dolar currency?", video: rey_leon)
q33.save!
a33_1 = Answer.new(answer: "120", correct: false, question: q33)
a33_1.save!
a33_2 = Answer.new(answer: "200", correct: false, question: q33)
a33_2.save!
a33_3 = Answer.new(answer: "130", correct: true, question: q33)
a33_3.save!

q34 = Question.new(question: "The yankees has to be worried because we become...?", video: rey_leon)
q34.save!
a34_1 = Answer.new(answer: "Financier", correct: true, question: q34)
a34_1.save!
a34_2 = Answer.new(answer: "Police", correct: false, question: q34)
a34_2.save!
a34_3 = Answer.new(answer: "Attorney", correct: false, question: q34)
a34_3.save!

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

bicicleta = Video.new(url:"-UV0QGLmYys", title: "La bicicleta", difficulty: 670 , category:"Song", region: "Colombia", transcript: "
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
