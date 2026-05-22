    -- Archivo de inserción de datos iniciales para los monumentos proporcionados
    -- Se utilizan UUIDs simulados para mantener la relación de las claves foráneas
    -- Se asignan IDs secuenciales manualmente para las tablas relacionadas, tal y como se acordó

    -- 1. INSERSIONES EN LA TABLA Monumento
INSERT INTO Monumento (id, name, lat, lon, accessibility, tag_id,maps_url, n_likes, localidad_id) VALUES
(
    '550e8400-e29b-41d4-a716-446655440000', 
    'Ermita Santa Lucia',
    37.724116856689534, 
   -3.9598591725111043, 
    false, 
    2,
    'https://www.google.com/maps/place/Ermita+de+Santa+Luc%C3%ADa/@37.7240956,-3.9626862,17z/data=!3m1!4b1!4m6!3m5!1s0xd6dc596f90d48f3:0xa36b43a506935684!8m2!3d37.7240914!4d-3.9601113!16s%2Fg%2F11ckxj_41b?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D', 
    0,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440001', 
    'Parque Anillo Verde Del Cerro', 
    37.72527742103564, 
    -3.9614528884399025, 
    false, 
    5,
    'https://www.google.com/maps/search/Parque+Anillo+Verde+Del+Cerro/@37.7510404,-4.0492491,11z/data=!3m1!4b1?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D', 
    30,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440002', 
    'Fuente Villa', 
    37.724858463145395, 
    -3.9626055546825607, 
    false, 
    4,
    'https://www.google.com/maps/place/Fuente+de+la+Villa/@37.7242049,-3.9611627,19z/data=!4m14!1m7!3m6!1s0xd6dc596f90d48f3:0xa36b43a506935684!2sErmita+de+Santa+Luc%C3%ADa!8m2!3d37.7240914!4d-3.9601113!16s%2Fg%2F11ckxj_41b!3m5!1s0xd6dc5907b34c073:0x2ad559a232addbc0!8m2!3d37.724839!4d-3.9625974!16s%2Fg%2F11g07znjzp?entry=ttu&g_ep=EgoyMDI2MDMyMi4wIKXMDSoASAFQAw%3D%3D', 
    120,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440003', 
    'Iglesia San Amador y Santa Ana', 
    37.7245172, 
    -3.9662249, 
    false, 
    2,
    'https://www.google.com/maps/place/Parroquia+de+San+Amador+y+Santa+Ana/@37.7245172,-3.9662249,17z/data=!3m1!4b1!4m6!3m5!1s0xd6dc594478d668b:0xd471d158c8f674a4!8m2!3d37.724513!4d-3.96365!16s%2Fg%2F1tfxzcqx?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D', 
    160,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440004', 
    'Parroquia Santa Marta', 
    37.7228781, 
    -3.9675517, 
    false, 
    2,
    'https://www.google.com/maps/place/Parroquia+de+Santa+Marta/@37.7228781,-3.9675517,17z/data=!3m1!4b1!4m6!3m5!1s0xd6dc594478d668b:0x904844757898509!8m2!3d37.7228739!4d-3.9649764!16s%2Fg%2F11c641697d?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D', 
    80,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440005', 
    'Antigua Carcel y Cabildo', 
    37.7229506, 
    -3.9683925, 
    true, 
    3,
    'https://www.google.com/maps/place/Antigua+C%C3%A1rcel+y+Cabildo/@37.7229506,-3.9683925,17z/data=!3m1!4b1!4m6!3m5!1s0xd6dc5ec47ffadbf:0x2b37e5b4c3713eac!8m2!3d37.7229464!4d-3.9658176!16s%2Fg%2F1223q83k?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D',
    70,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440008', 
    'Fortaleza Baja - Torre Almedina', 
    37.72348, 
    -3.9689784, 
    false, 
    1,
    'https://www.google.com/maps/place/Torre+Almedina/@37.72348,-3.9689784,17z/data=!3m1!4b1!4m6!3m5!1s0xd6dc595216bb3bf:0xb311f23d1aaa3b5f!8m2!3d37.7234758!4d-3.9664035!16s%2Fg%2F11gfgwwlnn?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D', 
    200,
    1
);

-- 2. INSERSIONES EN LA TABLA description

-- >> Monumento: Ermita Santa Lucia
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    1, 
    'Sinopsis Español', 
    'La Ermita de Santa Lucía es un histórico refugio de fe en Martos, restaurado por el esfuerzo colectivo de sus vecinos como un símbolo vivo de identidad, resistencia y memoria compartida.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440000'
),
(
    2, 
    'English Sinopsis', 'The Hermitage of Santa Lucía is a historic sanctuary in Martos, restored through community devotion as a living symbol of local identity, resilience, and collective memory', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440000'
),
(
    3, 
    'Texto Audio', 
    'Te encuentras ante la Ermita de Santa Lucía, uno de los rincones más queridos del casco
antiguo de Martos. Este pequeño templo, dedicado a la mártir Lucía de Siracusa, destaca
por su sencillez y por la fuerte vinculación que mantiene con la vida del municipio desde
hace siglos.
Para acceder a la ermita se asciende por una escalinata que conduce directamente a su
fachada. A uno de sus lados se alza un pilar que antiguamente fue, según recuerdan los
vecinos más mayores, un punto de agua muy utilizado en tiempos de sequía. En la fachada
pueden verse el nombre de la ermita y un azulejo dedicado a Santa Lucía. Todo el conjunto
queda coronado por una pequeña espadaña que le da su característico perfil.
Aunque su origen exacto no está documentado con precisión, se sabe que esta ermita
formó parte de la organización religiosa de Martos desde muy temprano. De hecho, se
considera que aquí estuvo uno de los primeros espacios de culto que dieron lugar a la
parroquia de San Amador y Santa Ana. Su interior es sencillo, con una única nave y un altar
presidido por la imagen de la santa.
La ermita ha vivido momentos difíciles. En el año 2009 su estructura sufrió un deterioro
importante y el techo comenzó a hundirse, lo que obligó a trasladar la imagen de Santa
Lucía a la parroquia para preservarla. Lejos de dejarla caer en el olvido, la comunidad
marteña se volcó por completo en su recuperación. Se organizaron rifas, conciertos
benéficos, ventas solidarias de dulces y hasta campañas simbólicas donde los vecinos
podían “apadrinar” tejas para financiar la restauración. Gracias a ese esfuerzo colectivo, la
ermita fue completamente rehabilitada y reabierta al culto años después, en un momento
muy emotivo para todo el barrio.
Además de su función religiosa, la ermita ha sido escenario de encuentros culturales y actos
comunitarios. En una ocasión, un certamen de música cofrade reunió a numerosas
agrupaciones de Martos y de pueblos cercanos para recaudar fondos destinados a su
mantenimiento. Estos eventos reforzaron aún más el vínculo entre la ermita y sus vecinos,
convirtiéndo en un símbolo de participación y memoria compartida.
Hoy, la Ermita de Santa Lucía no solo es un lugar de devoción, sino también un pequeño
fragmento de la historia viva de Martos. Representa la tradición, la capacidad de resistencia
y la importancia del patrimonio local. Quien la visita no solo observa un edificio antiguo:
conecta con las generaciones que la han cuidado y con el espíritu de una comunidad que
nunca permitió que este pequeño templo desapareciera.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440000'
),
(
    4, 
    'English Audio Text', 
    'You are standing before the Hermitage of Saint Lucy, one of the most cherished corners of
the old town of Martos. This small temple, dedicated to the martyr Lucy of Syracuse, is
known for its simplicity and for the strong connection it has maintained with the life of the
town for centuries.
To reach the hermitage, you walk up a staircase that leads directly to its façade. On one side
stands a pillar that, according to the oldest residents, once served as an important water
point during times of drought. On the front of the building you can see its name and a
ceramic tile dedicated to Saint Lucy. The entire structure is topped by a small belfry, giving
the hermitage its characteristic silhouette.
Although its exact origin is not precisely documented, it is known that this hermitage was
part of the early religious organization of Martos. In fact, it is believed that this was one of the
first places of worship that later gave rise to the parish of San Amador y Santa Ana. Inside,
the hermitage is simple, with a single nave and an altar presided over by the image of the
saint.
The hermitage has also faced difficult times. In 2009, its structure suffered significant
damage and the roof began to collapse, forcing the transfer of Saint Lucy’s image to the
parish for safekeeping. Rather than letting it fall into ruin, the people of Martos came
together to save it. They organized raffles, charity concerts, bake sales, and even symbolic
campaigns in which neighbors could “sponsor” roof tiles to help fund the restoration. Thanks
to this collective effort, the hermitage was completely repaired and reopened for worship a
few years later, in a moment that was deeply emotional for the entire community.
Beyond its religious role, the hermitage has also hosted cultural events and community
gatherings. On one occasion, a concert featuring several local and nearby music groups was
held to raise funds for its maintenance. These activities strengthened the bond between the
hermitage and the residents of Martos, turning it into a symbol of participation and shared
memory.
Today, the Hermitage of Saint Lucy is not only a place of devotion but also a small yet
significant piece of Martos’ living history. It represents tradition, resilience, and the
importance of preserving local heritage. Visitors not only see an old building—they connect
with the generations who cared for it and with the spirit of a community that never allowed
this little temple to disappear.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440000'
),
(
    5, 
    'Texto infantil', 
    'Imagina que estás subiendo unos escalones que te llevan a un lugar muy especial: la Ermita
de Santa Lucía. Es una pequeña casita blanca, tranquila y acogedora, que lleva muchísimos
años formando parte de la vida de Martos. Está dedicada a Santa Lucía, una santa muy
querida, y por eso en la entrada verás un azulejo con su nombre y su imagen.
Cuando terminas de subir la escalinata, te encuentras con un pilar al lado de la puerta. Los
vecinos mayores cuentan que hace tiempo allí venía la gente a recoger agua, sobre todo
cuando había poca en el pueblo. En lo alto del tejado verás una pequeña campana,
colocada en una estructura llamada espadaña, que le da un aspecto muy simpático y
reconocible.
Aunque la ermita es pequeñita, tiene una historia muy grande. Antiguamente fue uno de los
primeros lugares donde la gente del pueblo se reunía para rezar. Con el paso de los años,
ha vivido momentos buenos... y otros no tanto. En una ocasión, el techo empezó a
romperse y hubo que cerrar la ermita para arreglarla. Durante ese tiempo, la imagen de
Santa Lucía se guardó en otro sitio para que no le pasara nada.
Pero aquí viene lo más bonito: todos los vecinos de Martos se unieron para salvar la ermita.
Hicieron rifas, conciertos, ventas de dulces y un montón de actividades para reunir dinero.
Incluso organizaban eventos especiales donde cada persona podía ayudar “adoptando” una
teja del tejado. Gracias a todo ese esfuerzo, la ermita volvió a quedar como nueva y se
pudo abrir otra vez.
Hoy, la Ermita de Santa Lucía es un lugar alegre y querido. A veces se organizan
actividades, música y encuentros para mantenerla cuidada y viva. Cuando entres, verás que
es sencilla, pero guarda mucha historia y mucho cariño.
Así que, mientras la visitas, imagina todo lo que ha visto este pequeño templo: vecinos que
venían a por agua, niños que corrían por las escaleras, fiestas, reparaciones y mucha gente
que la ha querido durante generaciones. Es como un pequeño tesoro del pueblo, esperando
a que lo descubras.', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440000'
);

-- >> Monumento 2: Parque Anillo Verde Del Cerro
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    7, 
    'Sinopsis Español', 
    'Un espacio natural recuperado que transforma las laderas de Martos en un pulmón verde destinado al bienestar, el deporte y la conexión comunitaria.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440001'
),
(
    8, 
    'English Sinopsis', 'A reclaimed natural space that transforms the hillsides of Martos into a green lung dedicated to well-being, sports, and community connection.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440001'
),
(
    9, 
    'Texto Audio', 
    'El Parque Anillo Verde del Cerro es un ejemplo de cómo una ciudad puede transformar su
entorno para mejorar la calidad de vida de sus habitantes. Esta zona, situada alrededor de
las laderas del Cerro Alto y el Cerro Bajo, fue durante años un espacio degradado y poco
utilizado. Con el tiempo, el municipio decidió recuperar este entorno natural y convertirlo en
un parque que abrazara el casco antiguo de Martos, creando un auténtico “anillo verde”
alrededor del barrio.
El proyecto incluyó trabajos de limpieza y acondicionamiento del terreno, la estabilización de
las laderas y la plantación de vegetación autóctona para recuperar el paisaje original. Se
crearon senderos accesibles, zonas de sombra, bancos, barandillas y miradores naturales
desde los que se puede contemplar el casco urbano, los cerros y el mar de olivos que
caracteriza a esta comarca.
Con la mejora de la iluminación y la instalación de espacios pensados para el descanso, el
parque se ha convertido en un punto de encuentro para pasear, hacer deporte o
simplemente disfrutar del silencio y las vistas. Es habitual ver a familias, deportistas y
vecinos que utilizan el Anillo Verde para desconectar de la rutina sin salir del núcleo urbano.
Hoy en día, el Parque Anillo Verde del Cerro es un importante pulmón natural para Martos y
un ejemplo de cómo un espacio recuperado puede convertirse en un símbolo de bienestar,
cuidado medioambiental y vida comunitaria.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440001'
),
(
    10, 
    'English Audio Text', 
    'The Green Ring Park of the Cerro is a remarkable example of how a town can transform its
surroundings to improve community life. The area that now forms the park stretches along
the slopes of Cerro Alto and Cerro Bajo. For many years, these spaces were neglected, but
the town of Martos launched a project to recover the landscape and create a large natural
walkway that would embrace the historic center like a green ring.
The transformation involved cleaning and stabilizing the terrain, restoring the natural
vegetation and planting local species to recover the original landscape. Accessible paths
were built, along with benches, shaded areas, railings and viewpoints that offer wonderful
panoramas of the town and the countryside filled with olive groves.
With its illumination and comfortable resting spots, the Green Ring Park has become a
favorite place for walking, exercising, or simply relaxing while enjoying the scenery. Families,
runners and neighbors visit daily to breathe fresh air and escape the routine without leaving
the urban area.
Today, the Green Ring Park of the Cerro is a green lung for Martos and a symbol of
environmental care, community effort and the importance of recovering natural spaces for
everyone’s well-being.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440001'
),
(
    11, 
    'Texto infantil', 
    '¡Hola, pequeños exploradores!
Hoy vamos a descubrir el Parque Anillo Verde del Cerro, un lugar muy especial de Martos
donde la naturaleza y la ciudad viven juntas como buenas amigas.
Este parque rodea una parte del pueblo, como si fuera un gran cinturón verde lleno de
plantas, caminos y sitios para descansar. Antes, esta zona estaba un poco abandonada,
pero la gente de Martos decidió convertirla en un lugar bonito para pasear, correr y jugar.
Aquí podéis caminar por senderos que suben y bajan como una pequeña aventura, y si
levantáis la vista, veréis unas vistas increíbles del pueblo y de los olivos que lo rodean.
También hay bancos donde sentarse a escuchar los pájaros, y rincones perfectos para
descubrir plantas y bichitos.
El Anillo Verde es como un pequeño bosque dentro de Martos, un sitio donde podéis
respirar aire limpio, mover las piernas y disfrutar de la naturaleza sin alejaros del pueblo.
¡Así que abrid bien los ojos y disfrutad de este paseo!', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440001'
);

-- >> Monumento 3: Fuente Villa
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    13, 
    'Sinopsis Español', 
    'Emblemático monumento renacentista de Martos que, tras décadas oculto bajo el asfalto, fue restaurado en 2014 para recuperar su lugar como símbolo vivo del patrimonio y la historia local.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440002'
),
(
    14, 
    'English Sinopsis', 'An iconic Renaissance monument in Martos that, after decades buried under asphalt, was restored in 2014 to reclaim its place as a living symbol of local history and heritage.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440002'
),
(
    15, 
    'Texto Audio', 
    'Bienvenido a la Fuente de la Villa, uno de los puntos históricos más representativos de
Martos. Este lugar se formó alrededor del antiguo arroyo que bajaba desde la Peña, un
cauce natural que atrajo asentamientos desde tiempos prehistóricos y que abasteció a la
ciudad durante siglos.
La fuente actual se levantó en el siglo XVI, en pleno Renacimiento, cuando Martos vivía un
periodo de prosperidad agrícola y demográfica. Era una época en la que se modernizaban
las infraestructuras públicas, y esta fuente cumplía una doble función: ofrecer agua a los
vecinos y, al mismo tiempo, embellecer el espacio urbano. Su diseño combinaba un pilar
central renacentista, caños metálicos y un amplio pilón de piedra utilizado también como
abrevadero.
Los investigadores señalan que su construcción pudo tener un carácter conmemorativo,
pues estaría vinculada a la visita del emperador Carlos I en 1526. Por ello, antiguamente
lucía escudos y símbolos que reforzaban la relación entre la Corona y la ciudad.
Durante el siglo XX, con las obras de modernización urbana, la fuente fue enterrada bajo el
asfalto y permaneció oculta durante décadas. No fue hasta 2014 cuando se recuperó por
completo: se desenterró su estructura, se restauraron las piezas originales y se devolvió la
fuente al centro de esta plaza, respetando su aspecto histórico.
Hoy, la Fuente de la Villa vuelve a sonar y a ocupar su lugar como espacio de encuentro. Es
un recordatorio vivo de cómo Martos ha sabido conservar su patrimonio y mantener el valor
simbólico del agua a lo largo de los siglos.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440002'
),
(
    16, 
    'English Audio Text', 
    'Welcome to the Fountain of the Villa, one of Martos’ most historic and symbolic landmarks.
This square was shaped by the presence of an ancient stream that once flowed down from

the Peña, attracting settlements here since prehistoric times and supplying water to the town
for centuries.
The fountain you see today was built in the 16th century, during the Renaissance, a period
when Martos was growing rapidly. At that time, the town invested in new public works, and
this fountain served both practical and decorative purposes. Its design brought together a
central stone pillar, metal spouts, and a wide basin that provided water for the
residents—and even for their animals.
Historical research suggests that the fountain may also have been created to commemorate
the visit of Emperor Charles I in 1526. Because of that, it originally displayed royal symbols
and coats of arms carved into the stone, highlighting the connection between the Crown and
the town.
In the 20th century, during urban remodeling, the fountain was sadly buried beneath the
asphalt and forgotten for decades. It wasn’t until 2014 that the structure was uncovered and
carefully restored. Original stones and pieces were recovered, and the fountain was placed
once again at the center of the square.
Today, the Fountain of the Villa flows once more, transforming the square into a welcoming
gathering place. It stands as a living reminder of Martos’ long history—and of how important
water has always been in shaping the life of the town.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440002'
),
(
    17, 
    'Texto infantil', 
    '¡Bienvenido a la Fuente de la Villa, uno de los lugares más especiales de Martos!
Hace muchísimo tiempo, por aquí pasaba un pequeño arroyo que bajaba de la Peña y traía
agua fresca. Gracias a ese arroyo, la gente empezó a vivir en este sitio desde hace miles de
años.
La fuente que ves ahora se construyó en el siglo XVI, cuando Martos estaba creciendo y
necesitaba un lugar donde todos pudieran recoger agua limpia. Por eso hicieron esta fuente
con un pilar de piedra, varios caños y un pilón grande donde bebían tanto las personas
como los animales.
Algunos expertos piensan que también se hizo para celebrar la visita del emperador Carlos
I en 1526, por lo que antes tenía escudos y símbolos importantes grabados en la piedra.
Muchos años después, la fuente quedó enterrada bajo el asfalto y desapareció. Pero en
2014 la encontraron, la limpiaron y la devolvieron al centro de la plaza.
Hoy la Fuente de la Villa vuelve a tener agua y a recibir visitas. Es un recordatorio de la
historia de Martos... ¡y de que las cosas importantes siempre merecen ser recuperadas!', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440002'
);



-- >> Monumento 4: Iglesia San Amador Santa y Ana
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    19, 
    'Sinopsis Español', 
    'Emblemático templo de posguerra y corazón espiritual de Martos, la Iglesia de San Amador y Santa Ana une la devoción al patrón local con la memoria histórica de la ciudad.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440003'
),
(
    20, 
    'English Sinopsis', 
    'An emblematic post-war temple and spiritual heart of Martos, the Church of San Amador and Santa Ana blends devotion to the local patron saint with the city s historical memory.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440003'
),
(
    21, 
    'Texto Audio', 
    'Bienvenido a la Iglesia
de San Amador y Santa Ana, uno de los lugares más emblemáticos de Martos y punto de
referencia para generaciones de marteños. Al situarte frente al templo, estarás viendo un
edificio levantado en los años cuarenta del siglo XX. La antigua iglesia quedó destruida
durante la Guerra Civil, y esta construcción es el resultado del proyecto del arquitecto
Ramón Pajares Pardo, muy presente en la arquitectura religiosa de la posguerra en la
provincia de Jaén. 
La iglesia que observas destaca por sus líneas sencillas y sobrias. Su
interior está organizado en una única nave cubierta por una bóveda de medio cañón con
lunetos, un diseño funcional pensado para crear un espacio amplio y luminoso. A un lado
del templo se eleva su torre campanario, coronada por una pequeña cúpula y un pináculo
que la hacen reconocible desde distintos puntos del casco urbano. En el altar mayor se
encuentra la imagen de San Amador de Tucci, patrón de Martos y figura profundamente
arraigada en la tradición local. Según la tradición, Amador nació aquí en el siglo IX, en un
tiempo marcado por la presencia musulmana en la región. Su firmeza en la fe lo convirtió en
símbolo de resistencia espiritual y devoción para todos los marteños. Cada año, en los días
previos a su festividad, la imagen del santo se traslada en procesión hasta la que se
considera su casa natal, en la Calle Puerta del Sol. Allí permanece velado durante toda la
noche, en una de las tradiciones más queridas por la población. La plaza que se extiende
frente a ti guarda también un episodio importante de la historia reciente. Bajo ella se
construyeron refugios antiaéreos utilizados durante la Guerra Civil para proteger a los
vecinos en momentos de bombardeos. 
Aunque hoy en día permanecen cerrados, continúan
formando parte de la memoria de la ciudad. Visitar la Iglesia de San Amador y Santa Ana es
acercarse a la historia, la fe y el corazón de Martos. Su interior, sereno y recogido, invita a
detenerse unos minutos, mientras que su entorno te permite continuar descubriendo otros
rincones de interés del municipio, como la Real Iglesia de Santa Marta, el Castillo de la
Peña o el Santuario de Santa María de la Villa.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440003'
),
(
    22, 
    'English Audio Text', 
    'Church of San Amador and Santa Ana (Martos) Welcome to the Church
of San Amador and Santa Ana, one of the most emblematic places in Martos and a
landmark deeply connected to the town’s identity. As you stand in front of the church, you
are looking at a building constructed in the 1940s. The original temple was destroyed during
the Spanish Civil War, and this new structure was designed shortly after by the architect
Ramón Pajares Pardo, who played an important role in shaping post-war religious
architecture throughout the province of Jaén. The exterior of the church is characterized by
simple and sober lines. Inside, the layout consists of a single nave covered by a barrel vault
with lunettes, creating a spacious and bright interior designed for practical liturgical use. On
one side of the building stands the bell tower, topped with a small dome and a decorative
pinnacle, making it easily recognizable from various parts of the town. At the main altar, you
will find the image of Saint Amador of Tucci, the patron saint of Martos and a figure deeply
rooted in local devotion. According to tradition, he was born here in the 9th century, during a
period when the region was under Muslim rule. Despite the challenges of the time, Amador
remained steadfast in his Christian faith, becoming a symbol of spiritual resilience for the
people of Martos. Each year, in the days leading up to his feast, the town carries out one of
its most cherished traditions: a procession that takes the image of the saint to what is

believed to be his birthplace on Puerta del Sol Street, where he is kept in vigil throughout the
night. The small square in front of the church also holds a piece of recent history. Beneath it
lie air-raid shelters built during the Civil War, used to protect the residents during bombings.
Although they are now sealed and closed to the public, they remain a silent testament to the
hardships endured by the town. Visiting the Church of San Amador and Santa Ana allows
you to experience a place where history, devotion, and community life come together. Its
peaceful interior invites a moment of reflection, while its surroundings encourage you to
continue exploring other important landmarks in Martos, such as the Royal Church of Santa
Marta, the Sanctuary of Santa María de la Villa, and the Castle of La Peña.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440003'
),
(
    23, 
    'Texto infantil', 
    '¡Hola! Bienvenido a la Iglesia de
San Amador y Santa Ana, uno de los lugares más especiales de Martos. Vamos a dar un
pequeño paseo por su historia... ¡pero no te preocupes, que será divertido y fácil de
entender! Mira el edificio que tienes delante. Esta iglesia no es tan antigua como parece. Se
construyó hace muchos años, en la década de 1940, porque la iglesia que había antes se
destruyó durante una guerra. El arquitecto que la diseñó se llamaba Ramón Pajares Pardo,
y construyó muchas iglesias en la provincia. Si entras dentro, verás que solo tiene una gran
sala, muy alta y luminosa. A un lado está la torre con las campanas, que seguro has
escuchado más de una vez desde distintas partes del pueblo. En el altar se encuentra la
imagen de San Amador, el patrón de Martos. La tradición cuenta que nació aquí hace
muchísimo tiempo, en el siglo IX. Aunque vivió en una época difícil, nunca perdió su fe, y
por eso es tan importante para los marteños. Cada año, antes de su fiesta, se hace algo
muy especial: la imagen de San Amador se lleva en procesión hasta una casa en la Calle
Puerta del Sol, donde se dice que nació. Allí pasa la noche mientras la gente va a visitarlo y
a rezar. Y ahora mira la placita que está frente a la iglesia. ¿Sabías que debajo hay unos
antiguos refugios? Se construyeron para que la gente pudiera esconderse durante los
bombardeos en la guerra. Hoy están cerrados, pero siguen formando parte de la historia de
Martos. Visitar esta iglesia es como abrir un libro lleno de historias: de santos, de tradiciones
y de personas que vivieron aquí hace muchos, muchos años. ¡Espero que te haya gustado
este pequeño viaje por el pasado!', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440003'
);


-- >> Monumento 5: Parroquia Santa Marta
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    25, 
    'Sinopsis Español', 
    'Un recorrido por la evolución histórica y arquitectónica de la Real Iglesia Parroquial de Santa Marta en Martos, destacando su transición del gótico a la grandeza renacentista de Francisco del Castillo.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440004'
),
(
    26, 
    'English Sinopsis', 
    'A journey through the historical and architectural evolution of the Royal Parish Church of Saint Martha in Martos, highlighting its transition from Gothic origins to the Renaissance grandeur of Francisco del Castillo.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440004'
),
(
    27, 
    'Texto Audio', 
    'Nos encontramos en la Plaza de la Constitución, un enclave histórico en Martos, custodiado
por la legendaria Peña y el Cerro de Santa María de la Villa. Frente a nosotros se alza un
monumento esencial en la historia de nuestra ciudad: la Real Iglesia Parroquial de Santa
Marta.
Este templo se construyó sobre las ruinas de una antigua mezquita árabe y, antes de eso,
un templo romano. Su origen se remonta al siglo XIII, justo después de que el rey Fernando
III el Santo tomara la fortaleza en 1225. Está dedicada a la patrona de la ciudad, Santa
Marta, y ostenta el título de ''Real'' desde 1617. Un honor que le permitía celebrar honras
fúnebres por los monarcas y publicar la Bula de la Santa Cruzada.
Originalmente, la iglesia se levantó con una planta basilical de tres naves. Del templo
originario, de estilo gótico, podemos admirar hoy la elegante portada principal y las
hermosas bóvedas de crucería de terceletes que cubren el Baptisterio y la Capilla Mayor. El
gran cambio llegó en el siglo XVI con el arquitecto Francisco del Castillo. Él respetó la
estructura gótica, pero transformó por completo el interior al añadir gigantescos pilares de
orden toscano, confiriéndole un aire de grandiosa nave de salón. Esta remodelación es una
de las mejores obras de este arquitecto.

Mire hacia arriba, hacia la Torre Campanario. Esta es, sin duda, la firma más visible de la
intervención de Francisco del Castillo. Se trata de una torre esbelta y poderosa, dividida en
tres cuerpos de ascendente belleza: El Cuerpo Inferior, sólido y sobrio, el Cuerpo Medio, de
planta cuadrada, con pilastras y pináculos que le dan movimiento, y el Cuerpo Superior, un
remate de planta circular con pilastras corintias que sostiene un elegante chapitel apuntado.
Al entrar, preste atención a algunos de los tesoros artísticos que alberga: El Sagrario de
Plata, una joya del siglo XVIII realizada por Juan Jacinto Moreno, la Capilla de Nuestro
Padre Jesús Nazareno, un añadido barroco del siglo XVII, decorada con frescos de Antonio
García Reinoso y, un detalle histórico, la Tumba de los Hermanos Carvajales, ligada a una
de las leyendas más conocidas de Martos.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440004'
),
(
    28, 
    'English Audio Text', 
    'We are standing in the Plaza de la Constitución, a historic square in Martos, guarded by the
legendary Peña rock and the Santa María de la Villa Hill. Right before us stands a
monument that is central to our city''s history: the Royal Parish Church of Santa Marta.
This temple was erected on the ruins of an ancient Arab mosque, which itself was built over
a previous Roman temple. Its construction dates back to the 13th century, immediately
following King Ferdinand III the Saint''s capture of the fortress in 1225. The church is
dedicated to the city''s patron saint, Saint Martha, and has held the prestigious title of ''Royal''

since 1617. This honor allowed it to celebrate funeral honors for Spanish monarchs and
publish the Papal Bull of the Holy Crusade.
The original church featured a basilica floor plan with three naves. From the initial Gothic
structure, we can still admire the elegant main portal and the beautiful tierceron rib vaults
covering the Baptistery and the Main Chapel. A major transformation occurred in the 16th
century under the architect Francisco del Castillo. While respecting the overall Gothic
structure, he completely revamped the interior by adding colossal Tuscan-order columns,
lending the space the appearance of a majestic hall. This remodelling is considered one of
his finest works.

Please look up towards the Bell Tower. This is, without a doubt, the most visible signature of
Francisco del Castillo''s intervention. It is a slender and formidable tower, divided into three
ascending parts: The lower body, which is solid and unadorned, the middle body, which is
square in plan, featuring pilasters and pinnacles that add movement and grace, and the
upper body, a circular crown with Corinthian pilasters supporting an elegant, pointed spire.
As you step inside, take a moment to notice some of the artistic treasures housed here:
The Silver Tabernacle (Sagrario de Plata), a magnificent 18th-century piece crafted by Juan
Jacinto Moreno, the Chapel of Our Father Jesus of Nazareth (Capilla de Nuestro Padre
Jesús Nazareno), a Baroque addition from the 17th century decorated with frescoes by
Antonio García Reinoso and, a historical point of interest, the Tomb of the Carvajal Brothers,
linked to one of Martos''s most famous legends.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440004'
),
(
    29, 
    'Texto infantil', 
    '¡Bienvenidos, tripulantes! Hoy vamos a viajar en el tiempo sin movernos de esta plaza.
Nuestra máquina del tiempo es la Iglesia de Santa Marta, un edificio que ha visto casi 800
años de historia de Martos. Mirad la Peña, la roca gigante que nos vigila.
Imaginaros que esta iglesia es como una casa construida sobre otras casas. Se levantó
sobre una mezquita árabe y, mucho antes, sobre un templo romano. ¡Es como un sándwich
de historia! La iglesia es la sede de nuestra gran heroína local, Santa Marta. Por eso lleva
su nombre. El rey Fernando III, el que nos dio la ciudad, la mandó construir en el siglo XIII.
Vamos a observar el diseño. La puerta principal tiene el estilo gótico, que es el estilo de los
castillos y las iglesias muy antiguas. Sus adornos son tan puntiagudos que parecen lanzas
de piedra.
El mayorcambio ocurrió cuando un super arquitecto llamado Francisco del Castillo tomó el
mando en el siglo XVI. Él dijo: “¡Hagamos el interior gigante!”. Dentro, Del Castillo puso
unas columnas tan grandes y gordas que parecen los troncos de árboles gigantes (las
llamamos columnas toscanas). Esto hace que el espacio parezca inmenso.
Ahora, mirad tripulantes la parte más alta de la iglesia: la Torre Campanario. También es
obra de Francisco del Castillo. La torre es como un edificio de tres pisos: abajo es cuadrada,
pero arriba se convierte en redonda, terminando en un sombrero de piedra puntiagudo.
Desde allí, los vigilantes podían ver a kilómetros a la redonda porque este era el punto más
alto para proteger Martos.', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440004'
);


-- >> Monumento 6: Antigua Carcel y Cabildo
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    31, 
    'Sinopsis Español', 
    'Una obra maestra del manierismo andaluz del siglo XVI que fusiona su imponente arquitectura civil con el rico legado histórico romano de la ciudad de Martos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440005'
),
(
    32, 
    'English Sinopsis', 
    'A 16th-century masterpiece of Andalusian Mannerism that blends grand civic architecture with the rich Roman historical legacy of the city of Martos.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440005'
),
(
    33, 
    'Texto Audio', 
    'Continuamos en la Plaza de la Constitución, donde se alza un imponente edificio
que es la sede actual del Ayuntamiento de Martos: la Antigua Cárcel y Cabildo.
Esta es una obra maestra de la arquitectura civil del siglo XVI y el máximo
exponente del Manierismo andaluz en nuestra ciudad. Fue diseñado por el
arquitecto local Francisco del Castillo el Mozo y terminado en 1577. El edificio fue
concebido con un doble uso: servir como la casa de gobierno o Cabildo de la villa y
como Cárcel para la reclusión de penados. Su nobleza y suntuosidad sorprenden,
sabiendo que uno de sus destinos era la prisión.

La fachada principal es lo más espectacular. Fíjense en la portada, que se inspira en
el modelo de ''orden rústico'' del arquitecto Serlio. Podemos apreciar la
espectacularidad del Manierismo en sus enormes columnas dóricas que están
fajadas, o envueltas, con grandes bloques de piedra (sillares almohadillados).
La parte superior está coronada por el imponente escudo imperial de la Casa de los
Austrias. A ambos lados del escudo se encuentran las figuras alegóricas de la
Justicia y la Prudencia, que, aunque fueron decapitadas, enfatizan el poder y la ley
del antiguo Cabildo.
El edificio tiene una planta cuadrangular con todas sus dependencias organizadas
alrededor de un patio central. El acceso a este patio es a través de un hueco de
estilo paladiano. La construcción formó parte de un ambicioso plan para embellecer
Martos y vincular su grandeza actual con su pasado, la antigua ciudad romana de
Tucci.
Para confirmar esta conexión, observemos la fachada lateral derecha: está
decorada con diversas lápidas con inscripciones romanas y restos arqueológicos,
usándose como un panel de exhibición de la historia antigua de Martos.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440005'
),
(
    34,
    'English Audio Text', 
    'Continuing our journey in the Plaza de la Constitución, we now face an imposing
structure that currently serves as the Martos Town Hall: the Old Prison and Town Hall
(Antigua Cárcel y Cabildo).
This is considered a masterpiece of 16th-century civil architecture and the finest
example of Andalusian Mannerism in our city. It was designed by the local architect
Francisco del Castillo el Mozo and completed in 1577. The building was built with a
dual purpose: to function as the governing house or Cabildo (Council) and as the
municipal Prison. Its nobility and luxury are surprising, considering one of its main
uses was the confinement of criminals.
The main façade is its most striking feature. It is inspired by the ‘rustic order’ model
developed by the architect Serlio. You can appreciate the drama of Mannerism in its
massive Doric columns which are banded, or wrapped, with large cushioned stone
blocks (sillares almohadillados).
The entrance is crowned by the great imperial coat of arms of the House of
Habsburg (Casa de los Austrias). Flanking the shield are the allegorical sculptures of
Justice and Prudence , which, although currently decapitated, add gravity and
symbolism to the entrance.
The building has a quadrangular plan , with all its rooms organized around a central
courtyard. The access to this patio features a Paladian opening. Its construction was
part of an ambitious urban plan to create a capital worthy of Martos’s legacy,
particularly linking it to the ancient Roman city of Tucci.
To reinforce this connection with ancient history, look at the right lateral façade: it is
decorated with several tombstones bearing Roman inscriptions and archaeological
remains, designed to serve as a public panel of Martos’s ancient past.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440005'
),
(
    35, 
    'Texto infantil', 
    '¡Hola, detectives de Martos! Mirad este edificio que parece un palacio, es la Antigua
Cárcel y Cabildo. ¿Sabéis qué es? ¡Es donde está el alcalde de la ciudad, el
Ayuntamiento!
Pensad que este edificio tiene más de 400 años. Fue construido en el siglo XVI por
un muy buen arquitecto: Francisco del Castillo. Cuando era nuevo,servía para dos
cosas: era la casa donde se reunían los jueces para poner las reglas (el Cabildo), ¡y
también era la cárcel para los que rompían las reglas!
Vamos a observar la puerta principal, es la más interesante. El estilo que tiene se
llama Manierismo, que significa que es un poco juguetón con las formas. Fijaros en
las columnas a los lados de la puerta. ¡Parecen gigantes porque son muy gruesas y
están envueltas en grandes bloques de piedra! Es como si hubieran puesto una
armadura a las columnas.
Mirad arriba: hay un gran escudo del Rey de España. A los lados, había dos figuras
de piedra, que eran la Justicia y la Prudencia (que significa ser inteligente antes de
actuar). ¡Pero alguien les cortó la cabeza! Es un misterio antiguo.
Por dentro, el edificio tiene un diseño cuadrado y todas las habitaciones se
organizan alrededor de un patio central.
Aquí viene lo más curioso: mirad la pared del lado derecho. ¡El arquitecto puso
piedras antiguas con letras raras grabadas! Estas piedras son lápidas romanas que
se encontraron en Martos. Las puso ahí para mostrar que nuestra ciudad es tan
importante como las antiguas ciudades de Roma. ¡Es como un museo al aire libre!
¡Qué gran edificio lleno de reglas, misterios y pedacitos de historia!', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440005'
);

-- >> Monumento 7: Fortaleza Baja - Torre Almedina
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    37, 
    'Sinopsis Español', 
    'Una imponente ciudadela medieval de la Orden de Calatrava que funcionó como baluarte estratégico inexpugnable y centro de poder en Martos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440008'
),
(
    38, 
    'English Sinopsis', 
    'An imposing medieval citadel of the Order of Calatrava that functioned as an impregnable strategic stronghold and center of power in Martos.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440008'
),
(
    39, 
    'Texto Audio', 
    'La Fortaleza Baja de Martos, también conocida como el Castillo de la Villa, constituyó un reducto defensivo inexpugnable concebido como una ciudadela independiente dentro de la trama urbana medieval. Su núcleo principal destaca por la imponente Torre del Homenaje, una construcción de la Orden de Calatrava del siglo XIV que, con sus 22 metros de altura, funcionaba como centro de poder y refugio estratégico. Este complejo albergaba infraestructuras vitales para resistir asedios, tales como aljibes subterráneos con bóvedas ojivales, bodegas y sedes administrativas, consolidándose como el último baluarte de la ciudad.
El sistema defensivo se extiende a través de un recinto murado que aprovecha la orografía rocosa, con vestigios que abarcan desde épocas ibéricas y romanas hasta el periodo bajomedieval. Estas murallas, que integran elementos como la Torre Almedina y diversos cubos defensivos, formaban parte de un cinturón de seguridad más amplio que conectaba la peña con el resto del municipio a través de puertas y torreones albarranas. Actualmente, la estructura sobrevive integrada en el paisaje urbano, donde los antiguos lienzos y contrafuertes testimonian la evolución de la arquitectura militar y la relevancia estratégica de este emplazamiento a lo largo de los siglos.
', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440008'
),
(
    40, 
    'English Audio Text', 
    'The Fortaleza Baja de Martos, also known as the Castillo de la Villa, was an impregnable defensive stronghold designed as an independent citadel within the medieval urban fabric.
Its core is dominated by the imposing Keep, Torre del Homenaje, a 14th-century construction by the Order of Calatrava. Standing 22 meters tall, it functioned as both a seat of power and a strategic refuge. The complex housed vital infrastructure for withstanding sieges, such as underground cisterns with ogival vaults, cellars, and administrative offices, establishing itself as the city''s ultimate bastion.
The defensive system extends through a walled enclosure that leverages the rocky terrain, with remains spanning from Iberian and Roman times to the Late Middle Ages. These walls, incorporating elements like the Almedina Tower and various defensive bastions, formed part of a broader security belt that connected the crag to the rest of the town through gates and albarrana towers. Today, the structure survives integrated into the urban landscape, where the ancient stretches of wall and buttresses bear witness to the evolution of military architecture and the strategic importance of this site throughout the centuries.
', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440008'
),
(
    41, 
    'Texto infantil', 
    '¡Imagina que eres un valiente caballero o una poderosa guerrera y que el Castillo de la Villa de Martos es tu refugio secreto e indestructible! Esta fortaleza era como un escudo gigante de piedra metido dentro del pueblo, diseñado para que ningún enemigo pudiera entrar jamás. En el centro de todo se alza la impresionante Torre del Homenaje, que es tan alta como cinco elefantes puestos uno encima de otro, ¡nada menos que 22 metros! La construyeron unos caballeros muy famosos, los de la Orden de Calatrava, para vigilarlo todo desde las nubes. Pero lo más emocionante es lo que había escondido bajo el suelo: tenían unos aljibes que eran como piscinas subterráneas con techos de formas raras para guardar agua fresca y bodegas llenas de comida por si el enemigo se quedaba fuera mucho tiempo esperando. Además, los muros del castillo son como un puzzle mágico, porque están construidos aprovechando las rocas de la propia montaña y tienen piedras puestas por romanos e íberos de hace miles de años. Hoy, si paseas por Martos, verás que los trozos del castillo siguen ahí mezclados con las casas, como si la ciudad fuera una máquina del tiempo de piedra que nos cuenta historias de batallas y valientes defensores.', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440008'
);

