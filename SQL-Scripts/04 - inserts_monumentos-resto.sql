-- Archivo de inserción del resto de datos de monumentos
-- Se utilizan UUIDs simulados para mantener la relación de las claves foráneas
-- Se asignan IDs secuenciales manualmente para las tablas relacionadas, tal y como se acordó

-- SI VES ESTE COMENTARIO NO INSERTES LOS DATOS!!!!
-- TODAVIA NO SE HA TERMINADO ESTE SCRIPT

--Insert Noticias
INSERT INTO noticias (id, titulo, subtitulo, contenido, estado, fecha_publicacion, imagen_url) 
VALUES (
    'a1b2c3d4-e5f6-4a1b-8c2d-9876543210ab', 
    'Nuevo proyecto de restauración para la Peña de Martos', 
    'El ayuntamiento plantea consolidar los accesos al histórico castillo.', 
    'Durante el último pleno municipal, se ha debatido un primer borrador para destinar fondos a la adecuación del sendero principal que sube a la Peña de Martos. El objetivo es mejorar la seguridad de los senderistas y proteger el patrimonio arquitectónico de la fortaleza calatrava. El documento aún debe ser revisado por la comisión de urbanismo.', 
    0, 
    NULL, 
    NULL
);

-- 1. INSERSIONES EN LA TABLA Monumento
-- Inserciones en la tabla Monumento
INSERT INTO Monumento (id, name, lat, lon, accessibility, tag_id, maps_url, n_likes, localidad_id) VALUES
(
    '550e8400-e29b-41d4-a716-446655440006', 
    'Círculo Nueva Amistad',
    37.723368424198036, 
    -3.9657610031595603, 
    false, 
    3, -- Tag: CIVIL
    'https://maps.app.goo.gl/yhcdmmb9PKf1cJit9', 
    300,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440007', 
    'Convento RR.MM. Trinitarias',
    37.723000224957374, 
    -3.9662104185013964, 
    false, 
    2, -- Tag: RELIGIOSO
    'https://maps.app.goo.gl/grwHzZZyGVTZGuhFA', 
    90,
    1
),
(
    '550e8400-e29b-41d4-a716-446655440009', 
    'Santuario Virgen De La Villa',
    37.723289951847114, 
    -3.9685535301467696, 
    false, 
    2, -- Tag: RELIGIOSO
    'https://maps.app.goo.gl/Cd4UfeqQnkGkbdfa6 ', 
    200,
    1
),
(
    '550e8400-e29b-41d4-a716-44665544000a', 
    'Escuela Artes y Oficios',
    37.72211904616395, 
    -3.9683233170455945, 
    false, 
    3, -- Tag: CIVIL
    'https://maps.app.goo.gl/nZnoDnEXvGCb6GuF8 ', 
    123500,
    1
),
(
    '550e8400-e29b-41d4-a716-44665544000b', 
    'Colección Museografica',
    37.722095651979416, 
    -3.968367138024819, 
    false, 
    3, -- Tag: CIVIL
    'https://maps.app.goo.gl/3eVYcc9sxnPHD2kP6 ', 
    105,
    1
),
(
    '550e8400-e29b-41d4-a716-44665544000c', 
    'Ermita San Miguel',
    37.71950731776276, 
    -3.968051205029947, 
    false, 
    2, -- Tag: RELIGIOSO
    'https://maps.app.goo.gl/cAVyEBEbr2uSsMe4A ', 
    2,
    1
),
(
    '550e8400-e29b-41d4-a716-44665544000d', 
    'Paseo Calvario',
    37.717095545479005, 
    -3.9650130834163657, 
    true, 
    5, -- Tag: NATURAL
    'https://maps.app.goo.gl/MY2YTYnAkALeNeNV6 ', 
    260,
    1
),
(
    '550e8400-e29b-41d4-a716-44665544000e', 
    'Portada Iglesia San Francisco de Asis',
    37.72194008427188, 
    -3.969903960714808, 
    true, 
    2, -- Tag: RELIGIOSO
    'https://maps.app.goo.gl/QqKDzq4WC7Y2Erza7 ', 
    666,
    1
),
(
    '550e8400-e29b-41d4-a716-44665544000f', 
    'Casa Cultura Francisco Delicado',
    37.71833427198989, 
    -3.972621491404963, 
    true, 
    3, -- Tag: CIVIL
    'https://maps.app.goo.gl/1t37dE2M1Z8QcMPt6 ', 
    3929,
    1
);


-- 2. INSERSIONES EN LA TABLA description

-- >> Monumento 8: Círculo Nueva Amistad
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    127, 
    'Sinopsis Español', 
    'Un emblemático edificio neobarroco de 1927 que, tras ser el epicentro de la burguesía olivarera, hoy renace como el vibrante corazón cultural de Martos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440006'
),
(
    128, 
    'English Sinopsis', 
    'An emblematic 1927 Neo-Baroque building that, after serving as the epicenter for the olive-oil bourgeoisie, has been reborn as the vibrant cultural heart of Martos.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440006'
),
(
    129, 
    'Texto Audio', 
    'Bienvenido a la Plaza de la Constitución. Frente a ti se alza el Círculo de la Amistad, un elegante testigo de los "felices años 20" y del esplendor que el cultivo del olivo trajo a Martos. Construido en 1927 por el prestigioso arquitecto Félix Hernández —famoso por su labor en la Mezquita de Córdoba—, este edificio rompe con el pasado medieval de la ciudad para abrazar un estilo neobarroco, inspirado en las grandes capitales europeas. Fíjate en sus balcones y miradores acristalados; no eran solo adornos, sino auténticos escaparates sociales desde donde la burguesía local observaba el latido de la plaza.
En su interior, el tiempo parece haberse detenido entre mármoles y maderas talladas. Originalmente, estos salones eran el epicentro de la vida social masculina, dedicados a los negocios y la política, mientras que la mujer solo participaba en grandes bailes de gala. Tras un periodo de silencio, el edificio ha recuperado su alma gracias a la cultura local. Hoy, sus estancias ya no solo guardan ecos del pasado, sino que vibran con clubes de lectura y encuentros que mantienen vivo el espíritu de reunión para el que fue creado hace casi un siglo.
', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440006'
),
(
    130, 
    'English Audio Text', 
    'Welcome to Constitution Square.  
In front of you rises the Circle of Friendship, an elegant witness to the “Roaring Twenties” and to the prosperity that olive cultivation brought to Martos. Built in 1927 by the renowned architect Félix Hernández — famous for his work on the Mosque–Cathedral of Córdoba — this building breaks away from the city’s medieval past to embrace a Neo-Baroque style inspired by Europe’s great capitals. Take a look at its balconies and glassed-in viewpoints; they were not merely decorative, but true social showcases from which the local bourgeoisie observed the heartbeat of the square.

Inside, time seems to have stopped among marble surfaces and carved wood. Originally, these halls were the epicenter of male social life, dedicated to business and politics, while women only took part during grand gala dances. After a period of silence, the building has regained its soul thanks to local culture. Today, its rooms no longer hold only echoes of the past; they resonate with book clubs and gatherings that keep alive the spirit of community for which it was created nearly a century ago.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440006'
),
(
    131, 
    'Texto infantil', 
    '¡Hola, explorador! Mira ese edificio con tantos cristales que tienes delante: es el Círculo de la Amistad. Imagina que hace cien años, Martos era como una pequeña ciudad de cine y este era su palacio más moderno. Lo construyó un arquitecto muy famoso que también trabajó en castillos y mezquitas. Si te fijas en esos balcones cerrados con cristal, eran como las "pantallas de televisión" de la época: la gente se sentaba allí para cotillear qué pasaba en la plaza sin pasar frío ni despeinarse.
Por dentro es como un cuento, con una escalera de mármol brillante y mucha madera decorada. Antes, los mayores venían aquí a jugar a las cartas o a bailar en grandes fiestas. Aunque estuvo un tiempo cerrado y un poco "dormido", ¡ahora ha despertado! Ahora se organizan clubes de lectura y talleres, así que el edificio vuelve a estar lleno de risas y cuentos. ¡Es el lugar perfecto para que las ideas vuelen!
', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440006'
);

-- >> Monumento 9: Convento Trinitaria
INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    43, 
    'Sinopsis Español', 
    'Este histórico monasterio de 1595 fusiona arte barroco, vida contemplativa y devoción popular, preservando el legado trinitario a través de su arquitectura y su famosa repostería artesanal.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440007'
),
(
    44, 
    'English Sinopsis', 
    'This historic 1595 monastery blends Baroque art, contemplative life, and popular devotion, preserving the Trinitarian legacy through its architecture and famous artisanal pastries.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440007'
),
(
    45, 
    'Texto Audio', 
    'Te encuentras ante el Monasterio de la Santísima Trinidad, un rincón donde el tiempo parece haberse detenido desde su fundación en 1595. Al observar su fachada, notarás un fascinante contraste: la robustez de sus muros de piedra y la sencillez de su espadaña conviven con una elegante portada barroca. En ella destaca el escudo de la orden, una cruz roja y azul que simboliza su antigua misión de rescatar cautivos. Este edificio, reconstruido en el siglo XVIII gracias al mecenazgo de la nobleza local, es un testamento de piedra de la fe y la historia de nuestra ciudad.
En su interior, el misterio de la vida contemplativa se manifiesta en elementos como la impresionante celosía de madera, diseñada para que las monjas de clausura participaran en la liturgia sin ser vistas. El monasterio también custodia una memoria conmovedora: los restos de la Beata Madre Francisca de la Encarnación, martirizada en el siglo XX. Pero no todo es pasado; este templo late con fuerza cada Martes Santo cuando la Cofradía de Jesús Cautivo cruza su umbral, uniendo la devoción popular con el silencio de una comunidad que sigue endulzando Martos con su repostería artesanal.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440007'
),
(
    46, 
    'English Audio Text', 
    'You are standing before the Monastery of the Holy Trinity, a spiritual landmark in Martos founded in 1595. The exterior offers a striking architectural contrast: the austere stone walls and brick bell gable reflect the simplicity of monastic life, while the ornate Baroque portal showcases the artistic grandeur of the 18th century. Look closely at the entrance to see the red and blue cross, the emblem of the Trinitarian Order, which originally dedicated itself to the redemption of captives.
Inside, the monastery holds centuries of secrets, such as the magnificent wooden latticework that allowed the cloistered nuns to attend mass while remaining hidden from the world. The church is also a site of pilgrimage, housing the remains of Blessed Mother Francisca de la Encarnación. Today, the building remains a living part of the community; it is the home of the "Jesús Cautivo" brotherhood and a place where the nuns continue their four-century tradition, even selling their famous handmade sweets to locals and visitors alike.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440007'
),
(
    47, 
    'Texto infantil', 
    '¡Hola, explorador! Mira hacia arriba: este edificio tan grande es el Monasterio de la Trinidad y tiene más de 400 años. Si te fijas en la puerta, verás una cruz de colores azul y rojo. Hace mucho tiempo, los monjes que usaban ese escudo ayudaban a liberar a personas que estaban atrapadas en tierras lejanas. ¡Eran como héroes de la vida real! Por fuera parece un castillo de piedra muy serio, pero por dentro esconde tesoros y mucha historia.
Dentro del monasterio viven unas monjas que siempre están rezando y trabajando en silencio. Tienen una ventana de madera muy especial llamada celosía, que es como un "escondite" desde donde pueden ver la iglesia sin que nadie las vea a ellas. Pero lo mejor de todo es que, además de cuidar a sus santos y salir en procesión en Semana Santa, estas monjas hacen unos dulces riquísimos. ¡Es un lugar mágico donde la historia se mezcla con el olor a galletas recién horneadas!', 
    TRUE, 
    TRUE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440007'
);


-- >> Monumento 10: Santuario Virgen De La Villa

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    49, 
    'Sinopsis Español', 
    'El Santuario de la Virgen de la Villa es un emblemático centro de fe e historia en Martos que fusiona la devoción secular a su patrona con vistas privilegiadas al mar de olivos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440009'
),
(
    50, 
    'English Sinopsis', 
    'The Sanctuary of the Virgen de la Villa is an iconic center of faith and history in Martos that merges centuries-old devotion to its patron saint with breathtaking views of the "sea of olive trees', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440009'
),
(
    51, 
    'Texto Audio', 
    'El Santuario de la Virgen de la Villa es uno de los lugares más emblemáticos y queridos de Martos. Situado en un promontorio con vistas a la ciudad y al mar de olivos, es un espacio donde se unen espiritualidad, tradición e historia. En él se venera a la patrona de la ciudad, cuya devoción se remonta a la Edad Media, y se levanta sobre antiguos restos islámicos y cristianos, acompañando la vida del pueblo a lo largo de los siglos.
El edificio actual es fruto de diversas reformas, con una estructura principal barroca de los siglos XVII y XVIII. Su fachada es sobria y su interior íntimo, destacando el camarín de la Virgen, ricamente decorado y símbolo de la conexión con la tierra del olivar. La imagen, de estilo barroco tardío, luce distintos mantos según las festividades y está rodeada de exvotos y ofrendas.
Más allá de lo religioso, el santuario es un lugar de encuentro y celebración, especialmente durante la romería anual. Su entorno, con miradores y plazoletas, ofrece vistas privilegiadas de Martos y el valle del Guadalquivir, manteniéndose hoy como un espacio vivo de fe, contemplación y descanso.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-446655440009'
),
(
    52, 
    'English Audio Text', 
    'The Sanctuary of the Virgin of la Villa is one of the most iconic and beloved places in Martos.  
Set on a promontory overlooking the city and the sea of olive trees, it is a space where spirituality, tradition, and history come together. It is home to the patron saint of the city, whose devotion dates back to the Middle Ages, and it stands atop ancient Islamic and Christian remains, accompanying the life of the town through the centuries.

The current building is the result of various renovations, with a main Baroque structure from the 17th and 18th centuries. Its façade is sober, and its interior intimate, with the Virgin’s camarín standing out — richly decorated and symbolizing the deep connection to the land of the olive grove. The image itself, in a late Baroque style, is dressed in different mantles depending on the festivities and is surrounded by ex-votos and offerings.

Beyond its religious significance, the sanctuary is a place of gathering and celebration, especially during the annual romería. Its surroundings, with viewpoints and small plazas, offer privileged views of Martos and the Guadalquivir Valley, remaining today a living space of faith, contemplation, and rest.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-446655440009'
);

-- >> Monumento 11: Escuela Artes y Oficios

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    55, 
    'Sinopsis Español', 
    'La Escuela de Artes y Oficios de Martos es una institución histórica que, desde el siglo XIX, ha impulsado el desarrollo social y creativo de la ciudad a través de la formación técnica y artística.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000a'
),
(
    56, 
    'English Sinopsis', 
    'The Martos School of Arts and Crafts is a historic institution that, since the 19th century, has driven the city''s social and creative development through technical and artistic training.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000a'
),
(
    57, 
    'Texto Audio', 
    'La Escuela de Artes y Oficios de Martos es uno de los principales referentes culturales y formativos de la ciudad desde finales del siglo XIX. Surgió para responder a la necesidad de formar a la población en oficios artísticos y técnicos, impulsando el desarrollo social y económico en el contexto del movimiento regeneracionista y la modernización tras la revolución industrial.
El edificio, de estilo clásico y funcional, fue concebido como un espacio luminoso y ordenado, adaptado a la enseñanza práctica mediante talleres, aulas y zonas expositivas. A lo largo de su historia ha sido remodelado sin perder su vocación educativa. En sus aulas se enseñaron disciplinas como dibujo, pintura, forja, carpintería, cerámica o encuadernación, formando a generaciones de marteños y convirtiéndose en un foco de creatividad comunitaria.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000a'
),
(
    58, 
    'English Audio Text', 
    'The School of Arts and Crafts of Martos is one of the city’s main cultural and educational landmarks since the late 19th century. It was founded to meet the need to train the population in artistic and technical trades, promoting social and economic development within the context of the regenerationist movement and the modernization that followed the Industrial Revolution.
The building, classical and functional in style, was designed as a bright and well-organized space adapted to practical learning through workshops, classrooms, and exhibition areas. Throughout its history it has undergone renovations while preserving its educational purpose. Disciplines such as drawing, painting, metalwork, carpentry, ceramics, and bookbinding were taught there, training generations of local residents and becoming a center of community creativity.
Its cultural legacy is significant: students, artists, and teachers who passed through the school contributed to the artistic development of Martos during the 20th century. Today, although its functions have evolved, it remains an active cultural venue hosting exhibitions, creative workshops, and municipal activities, keeping alive the educational and cultural spirit with which it was founded.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000a'
);

-- >> Monumento 12: Colección Museografica

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    61,
    'Sinopsis Español', 
    'Un recorrido cronológico por el patrimonio de Martos que preserva su identidad cultural a través de piezas arqueológicas y etnográficas desde la Prehistoria hasta hoy.y creativo de la ciudad a través de la formación técnica y artística.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000b'
),
(
    62, 
    'English Sinopsis', 
    'A chronological journey through Martos'' heritage that preserves its cultural identity through archaeological and ethnographic pieces spanning from Prehistory to the present day.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000b'
),
(
    63, 
    'Texto Audio', 
    'La Colección Museográfica de Martos es un espacio dedicado a conservar y difundir el patrimonio histórico de la ciudad desde la Prehistoria hasta la Edad Contemporánea. Creada para reunir y proteger piezas dispersas, muchas procedentes de excavaciones arqueológicas locales, se ha convertido en un referente para comprender la evolución cultural y social de Martos y reforzar la identidad colectiva de sus habitantes.
El museo ocupa un espacio adaptado a criterios actuales de conservación y exposición, con un diseño sencillo y funcional que da protagonismo a las piezas. Sus salas se organizan de forma temática y cronológica, combinando elementos arqueológicos, etnográficos y artísticos para ofrecer un recorrido claro y completo por la historia local.
La colección incluye herramientas prehistóricas, cerámicas íberas, objetos y monedas romanas, restos medievales islámicos y cristianos, así como materiales vinculados a la antigua ciudad romana de Tucci. También se exponen objetos de la vida tradicional, como herramientas agrícolas y elementos domésticos. A través de estos testimonios, el museo hace visible la memoria colectiva y permite comprender cómo fue la vida en Martos a lo largo de los siglos.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000b'
),
(
    64, 
    'English Audio Text', 
    'The Museographic Collection of Martos is a space dedicated to preserving and showcasing the city’s historical heritage from Prehistory to the Contemporary Age. Created to gather and protect dispersed artifacts—many of them from local archaeological excavations—it has become a key reference for understanding the cultural and social evolution of Martos and strengthening the collective identity of its inhabitants.
The museum is housed in a space adapted to modern conservation and exhibition standards, with a simple and functional design that places the focus on the objects themselves. Its rooms are arranged thematically and chronologically, combining archaeological, ethnographic, and artistic elements to offer a clear and comprehensive journey through local history.
The collection includes prehistoric tools, Iberian decorated ceramics, Roman objects and coins, Islamic and Christian medieval remains, as well as materials related to the ancient Roman city of Tucci. Objects from traditional life, such as agricultural tools and domestic items, are also on display. Through these pieces, the museum makes collective memory visible and helps visitors understand how life in Martos was lived over the centuries.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000b'
);


-- >> Monumento 13: Ermita San Miguel

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    67,
    'Sinopsis Español', 
    'La Ermita de San Miguel es un histórico y humilde templo medieval en Martos que simboliza el legado de la Orden de Calatrava y la devoción popular de sus vecinos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000c'
),
(
    68, 
    'English Sinopsis', 
    'The San Miguel Hermitage is a historic and humble medieval temple in Martos that symbolizes the legacy of the Order of Calatrava and the popular devotion of its residents.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000c'
),
(
    69, 
    'Texto Audio', 
    'Te encuentras ahora en el corazón del casco antiguo de Martos, en la pintoresca plaza del
Llanete. Ante ti se alza un edificio pequeño, de muros blancos y aire humilde, pero cargado
de historia: es la Ermita de San Miguel.
Aunque su origen exacto es un misterio, sus piedras nos hablan del siglo XIV. Fue una de
las primeras construcciones religiosas que surgieron tras la conquista cristiana, impulsada
muy probablemente por la poderosa Orden de Calatrava, los monjes guerreros que
dominaron estas tierras.
Fíjate en su arquitectura. No busca la grandiosidad de las grandes iglesias, sino la cercanía
de lo popular. Su fachada encalada, típica andaluza, brilla bajo el sol, destacando la sencilla
portada de piedra y, en lo más alto, la espadaña con su campana, que durante siglos ha
marcado el ritmo de este barrio.
Pero esta ermita es mucho más que piedras y cal. En su interior, íntimo y recogido, se
venera al Arcángel San Miguel. Representado con armadura y espada, venciendo al mal, se
le considera el protector celestial de la ciudad. Si pudieras entrar, verías en sus muros
antiguos escudos heráldicos y restos de pinturas que narran ese pasado medieval de
frontera y órdenes militares.
Este lugar cobra vida especialmente cada 29 de septiembre. Antiguamente, era el centro de
grandes celebraciones y verbenas. Hoy, gracias al esfuerzo de los vecinos que han cuidado
y restaurado el edificio generación tras generación, la ermita sigue aquí, como un guardián
silencioso que vigila y protege la memoria de Martos.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000c'
),
(
    70, 
    'English Audio Text', 
    'You are now standing in the heart of the old town of Martos, in the picturesque Plaza del
Llanete. Before you rises a small building with whitewashed walls and a humble appearance,
yet it is full of history: this is the Hermitage of San Miguel.
Although its exact origin is a mystery, its stones date back to the 14th century. It was one of
the first religious buildings erected after the Christian conquest, most likely driven by the
powerful Order of Calatrava, the warrior monks who once ruled these lands.
Take a look at its architecture. It does not seek the grandeur of large churches, but rather the
warmth of popular style. Its whitewashed façade—typical of Andalusia—shines under the
sun, highlighting the simple stone doorway and, at the very top, the bell gable. For centuries,
its bell has set the rhythm of life in this neighborhood.
But this hermitage is more than just stone and lime. Inside, in an intimate and secluded
space, the Archangel San Miguel is venerated. Depicted with armor and a sword,
vanquishing evil, he is considered the city’s celestial protector. If you could step inside, you
would see ancient heraldic shields and remains of paintings on the walls that narrate that
medieval past of frontiers and military orders.
This place truly comes to life every September 29th. In the past, it was the center of great
celebrations and festivities. Today, thanks to the efforts of the neighbors who have cared for
and restored the building generation after generation, the hermitage remains here, standing
as a silent guardian watching over and protecting the memory of Martos.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000c'
),
(
    71, 
    'Texto Infantil', 
    '¡Hola, pequeños exploradores! Bienvenidos a la plaza del Llanete. ¿Veis esa casita blanca y
pequeña que tenéis delante? ¡Es la Ermita de San Miguel!

Parece una casa normal, ¿verdad? Pues guarda un secreto: es súper antigua. Se construyó
hace muchísimo tiempo, cuando en Martos vivían los Caballeros de Calatrava. ¿Os
imagináis? Eran unos monjes guerreros, como soldados antiguos, que mandaron construir
este sitio.
Mirad hacia arriba, al tejado. ¿Veis que hay un hueco con una campana? Esa campana ha
servido durante años para avisar a los vecinos de la hora y de las fiestas.
Y hablando de guerreros... dentro de esta ermita vive el ''superhéroe'' de Martos. Se llama
San Miguel y es un ángel con alas, armadura y espada. Dicen que él protege a toda la
ciudad de los ''malos''. Por eso, los vecinos de este barrio quieren tanto a esta ermita y la
cuidan mucho para que siempre esté bonita y blanca. ¡Es como el guardián mágico de la
plaza!', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000c'
),
(
    72, 
    'English kids text', 
    'Hello, little explorers! Welcome to Plaza del Llanete. Do you see that small white house right
in front of you? That is the Hermitage of San Miguel!

It looks like a normal house, doesn’t it? But it holds a secret: it is super old. It was built a
very, very long time ago, back when the Knights of Calatrava lived in Martos. Can you
imagine? They were warrior monks, like ancient soldiers, who ordered this place to be built.
Look up at the roof. Do you see that opening with a bell? That bell has been used for years
to tell the neighbors the time and to announce parties.
And speaking of warriors... inside this hermitage lives the ''superhero'' of Martos. His name is
San Miguel (Saint Michael), and he is an angel with wings, armor, and a sword. They say he
protects the whole city from the ''bad guys.'' That is why the neighbors of this quarter love this
hermitage so much and take great care of it, so it always stays beautiful and white. It is like
the magical guardian of the square!', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000c'
);

-- >> Monumento 14: Paseo Calvario

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    73,
    'Sinopsis Español', 
    ' Un recorrido por el emblemático balcón natural de Martos que entrelaza vistas panorámicas, patrimonio histórico y la oscura leyenda medieval de la Peña.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000d'
),
(
    74, 
    'English Sinopsis', 
    'A journey through Martos'' iconic natural balcony that intertwines panoramic views, historical heritage, and the dark medieval legend of the Peña.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000d'
),
(
    75, 
    'Texto Audio', 
    '¡Bienvenidos al Paseo del Calvario! Nos encontramos en el gran balcón natural de Martos, un trayecto peatonal de casi medio kilómetro que bordea la falda de nuestra emblemática Peña. A lo largo de los años, este lugar ha tenido varios nombres oficiales, pero para los vecinos siempre ha sido "el Calvario": un punto de encuentro que ha pasado de ser escenario de antiguas romerías y tradiciones, como la quema de las cruces, a convertirse en el mejor mirador de la ciudad.
Desde este punto, la vista es sencillamente espectacular. A un lado, pueden contemplar cómo el patrimonio histórico de Martos se funde con la ciudad moderna y su zona industrial; al otro, la imponente presencia de la Peña, que guarda una de las leyendas más oscuras de España. Se dice que aquí comenzó la maldición de Fernando IV "el Emplazado", quien tras ejecutar injustamente a dos hermanos en estas rocas, fue citado por ellos ante el tribunal de Dios y murió exactamente treinta días después.
Disfruten del aire fresco y de la panorámica. Este paseo no es solo un camino, es la antesala de la historia viva de Martos y el punto de partida perfecto para quienes deciden subir a la cima o visitar la cercana Ermita de San Bartolomé.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000d'
),
(
    76, 
    'English Audio Text', 
    'Welcome to the Paseo del Calvario, the natural balcony of Martos. This 450-meter pedestrian path winds along the base of the majestic "Peña," offering a unique bridge between the town’s ancient history and its modern skyline. Known by many names over the centuries, it remains a beloved local landmark where families once gathered for traditional festivities and pilgrimages, keeping the spirit of Jaén’s culture alive.
As you walk, take a moment to look out over the horizon. You’ll see the historic heart of Martos blending seamlessly with its bustling industrial areas. But keep one eye on the mountain above: this landscape is the setting for the famous legend of King Ferdinand IV, "the Summoned." It is said that after a wrongful execution here, two brothers summoned the King to face divine justice within thirty days—a prophecy that, according to legend, came true to the very day.
Whether you are here for a quiet stroll or as a starting point to climb the Peña, the Paseo del Calvario is the perfect place to feel the connection between nature and history. Enjoy the view!', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000d'
),
(
    77, 
    'Texto Infantil', 
    '¿Preparados para una aventura? ¡Bienvenidos al balcón más grande de Martos! Estamos en un camino mágico llamado el Paseo del Calvario. Si miráis hacia arriba, veréis la enorme Peña de Martos, que parece un gigante de piedra vigilando la ciudad. Hace mucho tiempo, este lugar era como el "parque de juegos" de vuestros abuelos, donde venían a merendar y a celebrar fiestas muy divertidas.
¡Asomaos al mirador (con cuidado, ¡eh!)! Desde aquí parece que tenemos un mapa gigante a nuestros pies. Podéis jugar a buscar los tejados más antiguos y las chimeneas de las fábricas. Pero atentos, porque esta montaña tiene un secreto: cuentan que hace cientos de años, unos caballeros lanzaron un hechizo de justicia a un rey que no se portó muy bien, ¡y el hechizo se cumplió en solo un mes!
Podéis seguir paseando, haceros fotos con las mejores vistas de la provincia o, si sois muy valientes, ¡empezar aquí el camino para subir hasta lo más alto de la roca! ¿Quién llegará primero?', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000d'
);


-- >> Monumento 15: Portada Iglesia San Francisco Asis

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    79,
    'Sinopsis Español', 
    'Una emblemática iglesia del siglo XX cuya portada barroca del siglo XVI destaca por su exquisita decoración de influencia colonial y sus singulares relieves indoamericanos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000e'
),
(
    80, 
    'English Sinopsis', 
    'An emblematic 20th-century church whose 16th-century Baroque portal stands out for its exquisite colonial-influenced decoration and unique Indo-American reliefs.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000e'
),
(
    81, 
    'Texto Audio', 
    '¡Bienvenidos a la Plaza de la Fuente Nueva! Nos
encontramos frente a la Iglesia de San Francisco,
erigida sobre el solar del antiguo convento franciscano.
Aunque el edificio moderno data del siglo XX, su
fachada es un auténtico tesoro histórico.
Contemplen la portada barroca, una joya arquitectónica
del siglo XVI con claras influencias coloniales. Su rica
decoración la convierte en el punto focal del conjunto.
● Fíjense en la estructura: el acceso es un arco de
medio punto flanqueado por dos columnas corintias
de fuste liso, que enmarcan la entrada.
● El arco está minuciosamente adornado con dovelas
decoradas con motivos geométricos y vegetales.
Presten especial atención a la clave del arco,
donde una hoja de acanto invertida destaca por un
relieve con el rostro de una persona de rasgos
indoamericanos, un detalle que subraya esa
influencia colonial.
● En la parte superior, una hornacina alberga la talla
de San Francisco de Asís. Está enmarcada por
columnas dobles y coronada por un frontón
triangular, rodeada de escudos y pináculos que
completan esta magnífica obra de piedra.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000e'
),
(
    82, 
    'English Audio Text', 
    'Welcome to the Plaza de la Fuente Nueva! We are
standing before the Church of San Francisco, built on
the site of the old Franciscan convent. While the current
church structure is modern, its main facade preserves a
genuine historical treasure.
Observe the Baroque doorway, a stunning architectural
piece from the 16th century with noticeable colonial
influences. Its elaborate decoration makes it the
undisputed centerpiece of the building.
● The entrance is framed by a semicircular arch and
flanked by two smooth-shafted Corinthian columns.
● Look closely at the arch: each stone is meticulously
decorated with geometric and vegetal motifs.
Specifically, the keystone features an inverted
acanthus leaf with a relief of a human face showing
indigenous American features, a fascinating detail
that speaks to its colonial flair.
● Above, a large niche (or hornacina) holds the
sculpture of Saint Francis of Assisi. This section is
richly detailed with double columns, shields, and
finials, all culminating in a triangular pediment. It is
truly a remarkable example of stone carving.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000e'
),
(
    83, 
    'Texto Infantil', 
    '¡Hola, exploradores! Miren qué iglesia tan grande. Es la
Iglesia de San Francisco, pero lo más divertido es ver
su puerta, que es como un dibujo gigante hecho de
piedra.
● Esta puerta es muy antigua, ¡de hace muchísimos
años! Se llama portada barroca.
● Fíjense en las dos columnas que parecen palos
muy altos. Sostienen la parte de arriba.
● El arco para entrar está lleno de caritas, hojas y
flores talladas. Es como un escondite de secretos
en la piedra.
● Busquen la cara misteriosa que está justo en la
piedra de arriba, en el centro del arco. Dicen que
tiene la carita de una persona que venía de
América, ¡como si fuera un dibujo traído de un viaje
muy lejos!
● Y justo encima de la puerta, en un huequito
especial (la hornacina), está la estatua de San
Francisco, con sus brazos abiertos. ¡Es como el
guardián de la iglesia!', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000e'
);

-- >> Monumento 15: Casa Cultura Francisco Delicado

INSERT INTO description (id, name, contenido, complete, kids, language, id_monumento) VALUES
(
    85,
    'Sinopsis Español', 
    'Antigua casa de recreo de estilo regionalista diseñada por Aníbal González que actualmente funciona como la Biblioteca Municipal de Martos.', 
    FALSE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000f'
),
(
    86, 
    'English Sinopsis', 
    'A former Regionalist-style summer house designed by Aníbal González that currently serves as the Martos Municipal Library.', 
    FALSE,
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000f'
),
(
    87, 
    'Texto Audio', 
    'Nos situamos ahora frente a la Casa Municipal de la
Cultura Francisco Delicado, popularmente conocida como
"El Hotelito". Este singular edificio fue concebido como una
casa de recreo, construido en la década de 1920 fuera del
núcleo urbano, en un entorno de huertas.
● El diseño es obra del afamado arquitecto sevillano
Aníbal González, conocido por su estilo regionalista,
que aquí se fusiona con toques eclécticos,
neomudéjares, renacentistas y barrocos.
● El edificio es de planta cuadrada y destaca por su torre
característica.
● Fíjense en sus tres niveles: la planta baja presenta un
elegante pórtico al que se accede por una escalinata,
apoyado en pilares decorados con rosetas.
● La segunda planta se centra en un gran balcón
principal, rematado por un frontón adornado con bellas
cerámicas.
● En la tercera planta encontramos una galería abierta
con arcos de medio punto hechos de ladrillo, también
embellecidos con detalles cerámicos.
● Observen el tejado, cubierto con tejas árabes de
cerámica vidriada en vibrantes colores amarillos y
verdes, un rasgo distintivo del regionalismo andaluz.
Actualmente, este hermoso inmueble alberga la Biblioteca
Municipal de Martos.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000f'
),
(
    88, 
    'English Audio Text', 
    'We are now in front of the Francisco Delicado Municipal
House of Culture, affectionately known as "El Hotelito" (The
Little Hotel). This unique building was originally constructed
in the 1920s as a detached leisure house, surrounded by
orchards outside the old city center.
● The design is attributed to the famous Seville architect,
Aníbal González. His style here is Regionalist,
blending with Eclectic, Neo-Mudéjar, Renaissance, and
Baroque elements.
● The house has a square layout and is easily
recognized by its prominent tower.
● Take note of its three floors: the ground floor features
an elegant portico accessible by a staircase, supported
by pillars decorated with rosettes.
● The second floor is dominated by a large central
balcony, topped with a pediment richly decorated with
ceramics.
● The third floor forms an open gallery with semicircular
brick arches, also featuring colorful ceramic motifs.
● Finally, look at the roof, covered in beautiful glazed
ceramic Arab tiles in distinctive yellow and green
colors, a hallmark of Andalusian Regionalism.
Today, this architectural gem serves as the Martos
Municipal Library.', 
    TRUE, 
    FALSE, 
    'en', 
    '550e8400-e29b-41d4-a716-44665544000f'
),
(
    89, 
    'Texto Infantil', 
    '¡Mira qué casa tan bonita y especial! Se llama "El Hotelito",
pero ahora es donde está la biblioteca para que podamos
leer muchos cuentos.
● Esta casa la construyó un señor arquitecto muy
famoso llamado Aníbal González hace casi cien años,
¡cuando estaba en el campo, rodeada de árboles!
● Es como un castillo de cuentos porque tiene una torre
que se ve desde lejos.
● Fíjate bien: tiene tres pisos. Abajo, hay un porche
donde te puedes sentar.
● En el piso de en medio, hay un balcón muy grande con
un dibujo de colores hecho con azulejos (la cerámica).
● En el piso de arriba, hay una galería con muchos
arquitos de ladrillo, como si fueran ventanitas
redondas.
● Lo más bonito es el tejado: está hecho con tejas de
cerámica de color verde y amarillo, ¡como un arcoíris
en el techo! Es el estilo que usaban en Andalucía para
construir casas preciosas.', 
    TRUE, 
    FALSE, 
    'es', 
    '550e8400-e29b-41d4-a716-44665544000f'
);









-- 3. INSERCIONES EN LA TABLA pictures
-- (Imágenes representativas ilustrativas generadas con rutas virtuales)

-- >> Monumento 8: Circulo Nueva Amistad
INSERT INTO pictures (id, url, id_monumento) VALUES
(54, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/7.CirculoNuevaAmistad/img/5.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI3LkNpcmN1bG9OdWV2YUFtaXN0YWQvaW1nLzUuanBnIiwiaWF0IjoxNzc0MTg2NzUzLCJleHAiOjIwODk1NDY3NTN9.pzsYbjvvjsSHW1m_ZNXBcQ14dAZ3a0-av4FAIDRLijI', '550e8400-e29b-41d4-a716-446655440006'),
(55, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/7.CirculoNuevaAmistad/img/6.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI3LkNpcmN1bG9OdWV2YUFtaXN0YWQvaW1nLzYuanBnIiwiaWF0IjoxNzc0MTg2NzYzLCJleHAiOjIwODk1NDY3NjN9.Dsa6OuMLMyRq4JUtgutS-y6Cry6dBiiyUpgkxDgJ3tI', '550e8400-e29b-41d4-a716-446655440006');


-- >> Monumento 9: Convento Trinitaria
INSERT INTO pictures (id, url, id_monumento) VALUES
(56, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/8.ConventoRR.MM.Trinitarias/img/1.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI4LkNvbnZlbnRvUlIuTU0uVHJpbml0YXJpYXMvaW1nLzEuanBnIiwiaWF0IjoxNzc0MTg2OTQyLCJleHAiOjIwODk1NDY5NDJ9.HhZezxbymQhm5RtahwOGgz9_OxJ9cYVvCw6znFYkQl4', '550e8400-e29b-41d4-a716-446655440007'),
(57, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/9.FortalezaBaja.TorreAlmedina/img/11.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI5LkZvcnRhbGV6YUJhamEuVG9ycmVBbG1lZGluYS9pbWcvMTEuanBnIiwiaWF0IjoxNzc0MTg3MTI5LCJleHAiOjIwODk1NDcxMjl9.j4k4Hylw71h8PRUFnnFAth23wEF2yfwt3m94Tt-V3gI', '550e8400-e29b-41d4-a716-446655440007');

-- >> Monumento 10: Santuario Virgen de la Villa
INSERT INTO pictures (id, url, id_monumento) VALUES
(58, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/11.SantuarioVirgenDeLaVilla/img/13.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMS5TYW50dWFyaW9WaXJnZW5EZUxhVmlsbGEvaW1nLzEzLmpwZyIsImlhdCI6MTc3NDE4NzMyMiwiZXhwIjoyMDg5NTQ3MzIyfQ.vAMjwO9HBF5sYC-u8TrnW-WGJpgLVzUzpdjoR1NpjDs', '550e8400-e29b-41d4-a716-446655440009'),
(59, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/11.SantuarioVirgenDeLaVilla/img/14.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMS5TYW50dWFyaW9WaXJnZW5EZUxhVmlsbGEvaW1nLzE0LmpwZyIsImlhdCI6MTc3NDE4NzMzMSwiZXhwIjoyMDg5NTQ3MzMxfQ.Fw74ehbmxr5BlMK1dyX1wso68448c1LXmZdBGNtDxTQ', '550e8400-e29b-41d4-a716-446655440009');

-- >> Monumento 11: Escuela de Artes y oficios
INSERT INTO pictures (id, url, id_monumento) VALUES
(60, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/img/5.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2ltZy81LmpwZyIsImlhdCI6MTc3NDE4NzQ3NiwiZXhwIjoyMDg5NTQ3NDc2fQ.FGviqDtRjjTOOwKNtXGdJHxZWng5iWyOpsom27sV2u8', '550e8400-e29b-41d4-a716-44665544000a'),
(61, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/img/3.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2ltZy8zLmpwZyIsImlhdCI6MTc3NDE4NzQ4OCwiZXhwIjoyMDg5NTQ3NDg4fQ.SGtHOA0UdaM2Tc6Zq4tD5K3cgSerAYsOi9CJpHJkKhg', '550e8400-e29b-41d4-a716-44665544000a');

-- >> Monumento 12: Colección Museografica
INSERT INTO pictures (id, url, id_monumento) VALUES
(62, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/img/5.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2ltZy81LmpwZyIsImlhdCI6MTc3NDE4NzQ3NiwiZXhwIjoyMDg5NTQ3NDc2fQ.FGviqDtRjjTOOwKNtXGdJHxZWng5iWyOpsom27sV2u8', '550e8400-e29b-41d4-a716-44665544000a'),
(63, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/img/3.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2ltZy8zLmpwZyIsImlhdCI6MTc3NDE4NzQ4OCwiZXhwIjoyMDg5NTQ3NDg4fQ.SGtHOA0UdaM2Tc6Zq4tD5K3cgSerAYsOi9CJpHJkKhg', '550e8400-e29b-41d4-a716-44665544000a');

-- >> Monumento 13: Ermita San Miguel
INSERT INTO pictures (id, url, id_monumento) VALUES
(64, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/5.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzUuanBnIiwiaWF0IjoxNzc0MTg3NTYyLCJleHAiOjIwODk1NDc1NjJ9.2VXN-gwMfoAQulNa5ahvRiEqCsiltEEXQvm1Ymcr2pU', '550e8400-e29b-41d4-a716-44665544000c'),
(65, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/4.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzQuanBnIiwiaWF0IjoxNzc0MTg3NTcxLCJleHAiOjIwODk1NDc1NzF9.VW2JyOCqDRhUIQSg7H1qz0Wscqayp-l6JsJt89nOfQE', '550e8400-e29b-41d4-a716-44665544000c'),
(66, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/7.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzcuanBnIiwiaWF0IjoxNzc0MTg3NTkyLCJleHAiOjIwODk1NDc1OTJ9.5SJ6e7qZV3TFy4nlj5RxrvLDQK90gyklSpMHOpx5V1U', '550e8400-e29b-41d4-a716-44665544000c'),
(67, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/8.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzguanBnIiwiaWF0IjoxNzc0MTg3NjA0LCJleHAiOjIwODk1NDc2MDR9.bbC9wBYFbc2lYY0QJwHTzdTOnZLe3hhOP0r5k_2q1uA', '550e8400-e29b-41d4-a716-44665544000c'),
(68, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/1.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzEuanBnIiwiaWF0IjoxNzc0MTg3NjE0LCJleHAiOjIwODk1NDc2MTR9.G1SyBgU_nKn5uNYbu92Sx3F23UIu3Lu6utOcTQIN6AA', '550e8400-e29b-41d4-a716-44665544000c'),
(69, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/2.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzIuanBnIiwiaWF0IjoxNzc0MTg3NjI0LCJleHAiOjIwODk1NDc2MjR9.vRHww3NzPtty_n-tnqHyo9mXk-L6KRvIVudEc9k7s1g', '550e8400-e29b-41d4-a716-44665544000c'),
(70, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/img/3.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvaW1nLzMuanBnIiwiaWF0IjoxNzc0MTg3NjMyLCJleHAiOjIwODk1NDc2MzJ9.o8_BUNaG-4Ve7Vo-KRY_vL5Ku8lQPNH1zzOb4pryGYY', '550e8400-e29b-41d4-a716-44665544000c');

-- >> Monumento 14: Paseo del Calvario
INSERT INTO pictures (id, url, id_monumento) VALUES
(71, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/0.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy8wLmpwZyIsImlhdCI6MTc3NDE4Nzc0MCwiZXhwIjoyMDg5NTQ3NzQwfQ.IDNuZ0qJt7NhISZ1yB973r1UIoNooNfAbuoJM3-gD8Q', '550e8400-e29b-41d4-a716-44665544000d'),
(72, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/1.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy8xLmpwZyIsImlhdCI6MTc3NDE4Nzc0OSwiZXhwIjoyMDg5NTQ3NzQ5fQ.2EbNrUnbuvobG0U8khpzEb66P17ksvTg_U7hJxSXqBw', '550e8400-e29b-41d4-a716-44665544000d'),
(73, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/3.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy8zLmpwZyIsImlhdCI6MTc3NDE4Nzc2NSwiZXhwIjoyMDg5NTQ3NzY1fQ.8C_OU774F-QcGWJY-0HQLSLyesalmLItj69IMliPlhE', '550e8400-e29b-41d4-a716-44665544000d'),
(74, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/2.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy8yLmpwZyIsImlhdCI6MTc3NDE4Nzc4NywiZXhwIjoyMDg5NTQ3Nzg3fQ.HljMe0cKHjfhsE1iZIx0i78FRYypfZRo-VsBWVUdgWQ', '550e8400-e29b-41d4-a716-44665544000d'),
(75, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/4.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy80LmpwZyIsImlhdCI6MTc3NDE4NzgwMiwiZXhwIjoyMDg5NTQ3ODAyfQ.Spt0KY7jwKumtmkvPRuzoqx1PZxZb730Vt5FnWLHMpI', '550e8400-e29b-41d4-a716-44665544000d'),
(76, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/5.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy81LmpwZyIsImlhdCI6MTc3NDE4NzgxMiwiZXhwIjoyMDg5NTQ3ODEyfQ.3GXnY9_FWbA9-XwXU5fhF2DmJp2Hf36Yt9Qlx_pLN9o', '550e8400-e29b-41d4-a716-44665544000d'),
(77, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/6.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy82LmpwZyIsImlhdCI6MTc3NDE4NzgyMSwiZXhwIjoyMDg5NTQ3ODIxfQ.HIDwlEhJUxnAdzydNa21GVYWdxR7Fec4sYSUOiis5BU', '550e8400-e29b-41d4-a716-44665544000d'),
(78, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/img/7.jpg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2ltZy83LmpwZyIsImlhdCI6MTc3NDE4NzgyOSwiZXhwIjoyMDg5NTQ3ODI5fQ.HydiivATdCUWu_mg-IQ7Jnnn47_utXY1oTbXUnbxK0s', '550e8400-e29b-41d4-a716-44665544000d');

-- >> Monumento 15: Portada Iglesia San Francisco Asis
INSERT INTO pictures (id, url, id_monumento) VALUES
(79, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/img/1.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvaW1nLzEuanBlZyIsImlhdCI6MTc3NDE4Nzk4OCwiZXhwIjoyMDg5NTQ3OTg4fQ.L3jOamhzdIxvaQjudaEGntp3o0Y7D2sCGhBZmDvQVSI', '550e8400-e29b-41d4-a716-44665544000e'),
(80, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/img/2.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvaW1nLzIuanBlZyIsImlhdCI6MTc3NDE4Nzk5OCwiZXhwIjoyMDg5NTQ3OTk4fQ.S7i4FiuaQx_IbUZ8tUQM8WgdAo6HAnyWZW1RVCz7CeI', '550e8400-e29b-41d4-a716-44665544000e'),
(81, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/img/3.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvaW1nLzMuanBlZyIsImlhdCI6MTc3NDE4ODAwNiwiZXhwIjoyMDg5NTQ4MDA2fQ.GOozBmJ2Dq-1ff6Oy76_DGq6qVFQq1hJ9q5-KfvLlzY', '550e8400-e29b-41d4-a716-44665544000e'),
(82, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/img/4.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvaW1nLzQuanBlZyIsImlhdCI6MTc3NDE4ODAxNCwiZXhwIjoyMDg5NTQ4MDE0fQ.xEyYsW4iqkZX3WjZGKJ4MZqKXM_tkkffdUHj32xR72I', '550e8400-e29b-41d4-a716-44665544000e');

-- >> Monumento 16: Casa Cultura Francisco Delicado
INSERT INTO pictures (id, url, id_monumento) VALUES
(83, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/19.CasaCulturaFranciscoDelicado/img/4.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOS5DYXNhQ3VsdHVyYUZyYW5jaXNjb0RlbGljYWRvL2ltZy80LmpwZWciLCJpYXQiOjE3NzQxODgxNDYsImV4cCI6MjA4OTU0ODE0Nn0._llyHYTfL3VhhYVqGgGMrekRCFEoAL9hXPP1EV_2c4U', '550e8400-e29b-41d4-a716-44665544000f'),
(84, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/19.CasaCulturaFranciscoDelicado/img/5.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOS5DYXNhQ3VsdHVyYUZyYW5jaXNjb0RlbGljYWRvL2ltZy81LmpwZWciLCJpYXQiOjE3NzQxODgxNTQsImV4cCI6MjA4OTU0ODE1NH0.kkT9hPnJW-EvLTPKsmdSDOIceAyX3yIW4Myx83KwuBU', '550e8400-e29b-41d4-a716-44665544000f'),
(85, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/19.CasaCulturaFranciscoDelicado/img/3.jpeg?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOS5DYXNhQ3VsdHVyYUZyYW5jaXNjb0RlbGljYWRvL2ltZy8zLmpwZWciLCJpYXQiOjE3NzQxODgxNjIsImV4cCI6MjA4OTU0ODE2Mn0.82sLVCt5c5J6viENRqwmYaVfrNEvuFb2tgToJco-4GM', '550e8400-e29b-41d4-a716-44665544000f');













-- 3. INSERCIONES EN LA TABLA audios
-- >> Monumento 8: Circulo Nueva Amistad
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(22, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/7.CirculoNuevaAmistad/audios/plazaconstitucion_audio_espanol.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI3LkNpcmN1bG9OdWV2YUFtaXN0YWQvYXVkaW9zL3BsYXphY29uc3RpdHVjaW9uX2F1ZGlvX2VzcGFub2wubXAzIiwiaWF0IjoxNzc0NDc4OTQyLCJleHAiOjIwODk4Mzg5NDJ9.FU3gyTvHWbJ3o13DrFifF0pLCEV_3aXdcEWfqzQRQiY', FALSE, 'es', '550e8400-e29b-41d4-a716-446655440006'),
(23, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/7.CirculoNuevaAmistad/audios/plazaconstitucion_audio_ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI3LkNpcmN1bG9OdWV2YUFtaXN0YWQvYXVkaW9zL3BsYXphY29uc3RpdHVjaW9uX2F1ZGlvX2luZ2xlcy5tcDMiLCJpYXQiOjE3NzQ0Nzg5NzAsImV4cCI6MjA4OTgzODk3MH0.XueoDGSGXZj4xiknTajIDsTh5_N_7O7lIjQXkPOhvUg', FALSE, 'en', '550e8400-e29b-41d4-a716-446655440006'),
(24, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/7.CirculoNuevaAmistad/audios/plazaconstitucion_audio_infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI3LkNpcmN1bG9OdWV2YUFtaXN0YWQvYXVkaW9zL3BsYXphY29uc3RpdHVjaW9uX2F1ZGlvX2luZmFudGlsLm1wMyIsImlhdCI6MTc3NDQ3ODk1NCwiZXhwIjoyMDg5ODM4OTU0fQ.B5LDMqdSoEMv7G8UK5Vq3luVhIapDeluIvG1yMw0-dc', TRUE, 'es', '550e8400-e29b-41d4-a716-446655440006');

-- >> Monumento 9: Convento Trinitaria
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(25, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/8.ConventoRR.MM.Trinitarias/audios/monasteriotrinidad_audio_espanol.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI4LkNvbnZlbnRvUlIuTU0uVHJpbml0YXJpYXMvYXVkaW9zL21vbmFzdGVyaW90cmluaWRhZF9hdWRpb19lc3Bhbm9sLm1wMyIsImlhdCI6MTc3NDQ3OTAxNCwiZXhwIjoyMDg5ODM5MDE0fQ.83E6Wwei4PPyBrnayXV5Izomv3UYmAFSgpNmuZMOMP8', FALSE, 'es', '550e8400-e29b-41d4-a716-446655440007'),
(26, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/8.ConventoRR.MM.Trinitarias/audios/monasteriotrinidad_audio_ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI4LkNvbnZlbnRvUlIuTU0uVHJpbml0YXJpYXMvYXVkaW9zL21vbmFzdGVyaW90cmluaWRhZF9hdWRpb19pbmdsZXMubXAzIiwiaWF0IjoxNzc0NDc5MDI4LCJleHAiOjIwODk4MzkwMjh9.jAlIdUhf-tCRLCO1VJy-PJsCmZJfiuT9mkaKAAkYa8k', FALSE, 'en', '550e8400-e29b-41d4-a716-446655440007'),
(27, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/8.ConventoRR.MM.Trinitarias/audios/monasteriotrinitarias_audio_infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiI4LkNvbnZlbnRvUlIuTU0uVHJpbml0YXJpYXMvYXVkaW9zL21vbmFzdGVyaW90cmluaXRhcmlhc19hdWRpb19pbmZhbnRpbC5tcDMiLCJpYXQiOjE3NzQ0NzkwNDIsImV4cCI6MjA4OTgzOTA0Mn0.NjcmkAZUCwhzUlsZs1MUR14ikPVmtmPPfwvgB_D7p0c', TRUE, 'es', '550e8400-e29b-41d4-a716-446655440007');

-- >> Monumento 10: Santuario Virgen de la Villa
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(28, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/11.SantuarioVirgenDeLaVilla/audios/11VirgenDeLaVillaES.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMS5TYW50dWFyaW9WaXJnZW5EZUxhVmlsbGEvYXVkaW9zLzExVmlyZ2VuRGVMYVZpbGxhRVMubXAzIiwiaWF0IjoxNzc0MTg3MTU3LCJleHAiOjIwODk1NDcxNTd9.hgwzailOHP7_EIkMLfW4sZLiwdHg4jHoXlNrHK6kjBo', FALSE, 'es', '550e8400-e29b-41d4-a716-446655440009'),
(29, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/11.SantuarioVirgenDeLaVilla/audios/11VirgenDeLaVillaEN.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMS5TYW50dWFyaW9WaXJnZW5EZUxhVmlsbGEvYXVkaW9zLzExVmlyZ2VuRGVMYVZpbGxhRU4ubXAzIiwiaWF0IjoxNzc0MTg3MTY2LCJleHAiOjIwODk1NDcxNjZ9.GcgmbbPwZy8Z59t123KTph7UKiLCVxt22ybAWx9rPzA', FALSE, 'en', '550e8400-e29b-41d4-a716-446655440009'),
(30, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/11.SantuarioVirgenDeLaVilla/audios/11VirgenDeLaVilla_Infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMS5TYW50dWFyaW9WaXJnZW5EZUxhVmlsbGEvYXVkaW9zLzExVmlyZ2VuRGVMYVZpbGxhX0luZmFudGlsLm1wMyIsImlhdCI6MTc3NDE4NzE3NSwiZXhwIjoyMDg5NTQ3MTc1fQ.JqyjdAAPSA-9GcxgWRdxGsWZKaA79MU3fPlqqhEMomU', TRUE, 'es', '550e8400-e29b-41d4-a716-446655440009');

-- >> Monumento 11: Escuela de Artes y Oficio
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(31, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/audios/escuelaartes_audio_espanol.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2F1ZGlvcy9lc2N1ZWxhYXJ0ZXNfYXVkaW9fZXNwYW5vbC5tcDMiLCJpYXQiOjE3NzQ0Nzk0MTEsImV4cCI6MjA4OTgzOTQxMX0.8T9-XV0pP2WNa59h8ixj97e-TjqdBhE2yI2xMtykSEI', FALSE, 'es', '550e8400-e29b-41d4-a716-44665544000a'),
(32, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/audios/escuelaartes_audio_ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2F1ZGlvcy9lc2N1ZWxhYXJ0ZXNfYXVkaW9faW5nbGVzLm1wMyIsImlhdCI6MTc3NDQ3OTQyNSwiZXhwIjoyMDg5ODM5NDI1fQ.MQpdBLqZs7TN4F9Z_BIe6iIxtSLx9yqZ5QqaR_P0ho0', FALSE, 'en', '550e8400-e29b-41d4-a716-44665544000a'),
(33, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/audios/escuelaartes_audio_infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2F1ZGlvcy9lc2N1ZWxhYXJ0ZXNfYXVkaW9faW5mYW50aWwubXAzIiwiaWF0IjoxNzc0NDc5OTQ0LCJleHAiOjIwODk4Mzk5NDR9.sHFzuCxuI6imB9D_oNwYmt_5HODhd4fOelQxu7nnVbQ', TRUE, 'es', '550e8400-e29b-41d4-a716-44665544000a');
/*
-- >> Monumento 12: Escuela de Artes y Oficio
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(34, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/audios/escuelaartes_audio_espanol.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2F1ZGlvcy9lc2N1ZWxhYXJ0ZXNfYXVkaW9fZXNwYW5vbC5tcDMiLCJpYXQiOjE3NzQ0Nzk0MTEsImV4cCI6MjA4OTgzOTQxMX0.8T9-XV0pP2WNa59h8ixj97e-TjqdBhE2yI2xMtykSEI', FALSE, 'es', '550e8400-e29b-41d4-a716-44665544000b'),
(35, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/audios/escuelaartes_audio_ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2F1ZGlvcy9lc2N1ZWxhYXJ0ZXNfYXVkaW9faW5nbGVzLm1wMyIsImlhdCI6MTc3NDQ3OTQyNSwiZXhwIjoyMDg5ODM5NDI1fQ.MQpdBLqZs7TN4F9Z_BIe6iIxtSLx9yqZ5QqaR_P0ho0', FALSE, 'en', '550e8400-e29b-41d4-a716-44665544000b'),
(36, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/12.EscuelaArtesOficios/audios/escuelaartes_audio_infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxMi5Fc2N1ZWxhQXJ0ZXNPZmljaW9zL2F1ZGlvcy9lc2N1ZWxhYXJ0ZXNfYXVkaW9faW5mYW50aWwubXAzIiwiaWF0IjoxNzc0NDc5OTQ0LCJleHAiOjIwODk4Mzk5NDR9.sHFzuCxuI6imB9D_oNwYmt_5HODhd4fOelQxu7nnVbQ', TRUE, 'es', '550e8400-e29b-41d4-a716-44665544000b');
*/

-- >> Monumento 13: Ermita San Miguel
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(37, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/audios/sanmiguel_normal.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvYXVkaW9zL3Nhbm1pZ3VlbF9ub3JtYWwubXAzIiwiaWF0IjoxNzc0MTg3NTIwLCJleHAiOjIwODk1NDc1MjB9.t3_ILQSeQoIix4IuJoU9e297i9zNb8umryl5jvmwG20', FALSE, 'es', '550e8400-e29b-41d4-a716-44665544000c'),
(38, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/audios/sanmiguel_ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvYXVkaW9zL3Nhbm1pZ3VlbF9pbmdsZXMubXAzIiwiaWF0IjoxNzc0MTg3NTI4LCJleHAiOjIwODk1NDc1Mjh9.x-R0Xhd5Clb_Y1yyNvGEejqfyGktvoYGTjCh4ogNP0c', FALSE, 'en', '550e8400-e29b-41d4-a716-44665544000c'),
(39, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/15.ErmitaSanMiguel/audios/sanmiguel_infantilnormal.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNS5Fcm1pdGFTYW5NaWd1ZWwvYXVkaW9zL3Nhbm1pZ3VlbF9pbmZhbnRpbG5vcm1hbC5tcDMiLCJpYXQiOjE3NzQxODc1MzYsImV4cCI6MjA4OTU0NzUzNn0.c6Xr6vd6a-L9-s5kMs1f5aLHeiC8kr5d5rbXcqDzxcY', TRUE, 'es', '550e8400-e29b-41d4-a716-44665544000c');

-- >> Monumento 14: Ermita San Miguel
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(40, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/audios/audio_espanol.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2F1ZGlvcy9hdWRpb19lc3Bhbm9sLm1wMyIsImlhdCI6MTc3NDE4NzcwMywiZXhwIjoyMDg5NTQ3NzAzfQ.xhZhNq2FmW5BszNY_1347YMaIIEEkPEv6VScdx_Oans', FALSE, 'es', '550e8400-e29b-41d4-a716-44665544000d'),
(41, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/audios/audio_ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2F1ZGlvcy9hdWRpb19pbmdsZXMubXAzIiwiaWF0IjoxNzc0MTg3NzE4LCJleHAiOjIwODk1NDc3MTh9.aB69KnLfRbAdZ1-aJiVjcygdRIrRV4QSqNpn2XIifnM', FALSE, 'en', '550e8400-e29b-41d4-a716-44665544000d'),
(42, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/16.PaseoCalvario/audios/audio_infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxNi5QYXNlb0NhbHZhcmlvL2F1ZGlvcy9hdWRpb19pbmZhbnRpbC5tcDMiLCJpYXQiOjE3NzQxODc3MjcsImV4cCI6MjA4OTU0NzcyN30.LraXDbrGPIterl27dzNsgOfbe8UUNsZpSdDatxEakoI', TRUE, 'es', '550e8400-e29b-41d4-a716-44665544000d');

-- >> Monumento 15: Portada Iglesia San Francisco Asis
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(43, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/audios/PortadaIglesia_Espaniol.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvYXVkaW9zL1BvcnRhZGFJZ2xlc2lhX0VzcGFuaW9sLm1wMyIsImlhdCI6MTc3NDE4Nzk0NiwiZXhwIjoyMDg5NTQ3OTQ2fQ.kTTV2t7VmjPhEPQxD_iLR86rRFjZqGSg99F8FLFXnZU', FALSE, 'es', '550e8400-e29b-41d4-a716-44665544000e'),
(44, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/audios/PortadaIglesia_Ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvYXVkaW9zL1BvcnRhZGFJZ2xlc2lhX0luZ2xlcy5tcDMiLCJpYXQiOjE3NzQxODc5NTQsImV4cCI6MjA4OTU0Nzk1NH0.D3OxAL5pxdxscglgEHlKNoTFjh6YPkkQwzGwjWVSn_k', FALSE, 'en', '550e8400-e29b-41d4-a716-44665544000e'),
(45, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/18.PortadaIglesiaSanFranciscoAsis/audios/PortadaIglesia_Infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOC5Qb3J0YWRhSWdsZXNpYVNhbkZyYW5jaXNjb0FzaXMvYXVkaW9zL1BvcnRhZGFJZ2xlc2lhX0luZmFudGlsLm1wMyIsImlhdCI6MTc3NDE4Nzk2MywiZXhwIjoyMDg5NTQ3OTYzfQ.olmDw-QE1Zfb9ej8HQqhUBeAiuUnDbw4x1TvyarKStg', TRUE, 'es', '550e8400-e29b-41d4-a716-44665544000e');

-- >> Monumento 15: Portada Iglesia San Francisco Asis
INSERT INTO audios (id, url, kids, language, id_monumento) VALUES
(46, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/19.CasaCulturaFranciscoDelicado/audios/CasaCultura_Espaniol_Normal.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOS5DYXNhQ3VsdHVyYUZyYW5jaXNjb0RlbGljYWRvL2F1ZGlvcy9DYXNhQ3VsdHVyYV9Fc3BhbmlvbF9Ob3JtYWwubXAzIiwiaWF0IjoxNzc0MTg4MTA4LCJleHAiOjIwODk1NDgxMDh9.OiNq3bSlii0tlyUl1tlLhnjfxCOnuz4REsYs7TK6t1c', FALSE, 'es', '550e8400-e29b-41d4-a716-44665544000f'),
(47, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/19.CasaCulturaFranciscoDelicado/audios/CasaCultura_Ingles.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOS5DYXNhQ3VsdHVyYUZyYW5jaXNjb0RlbGljYWRvL2F1ZGlvcy9DYXNhQ3VsdHVyYV9JbmdsZXMubXAzIiwiaWF0IjoxNzc0MTg4MTE3LCJleHAiOjIwODk1NDgxMTd9.0FFJj0mup_0gSHYPDg0l8pthohtJs-EqNUnxXzHylDg', FALSE, 'en', '550e8400-e29b-41d4-a716-44665544000f'),
(48, 'https://axhthfoqdxickibsblrq.supabase.co/storage/v1/object/sign/19.CasaCulturaFranciscoDelicado/audios/CasaCultura_Espaniol_Infantil.mp3?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV81NjFiNjY3OC1mYzY0LTRmOGUtOGY4OC1lNDdhYjMyZTYyNzciLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiIxOS5DYXNhQ3VsdHVyYUZyYW5jaXNjb0RlbGljYWRvL2F1ZGlvcy9DYXNhQ3VsdHVyYV9Fc3BhbmlvbF9JbmZhbnRpbC5tcDMiLCJpYXQiOjE3NzQxODgxMjYsImV4cCI6MjA4OTU0ODEyNn0.UBUUB-vGjJZCWN7UVa6xqqNmFt3SQeXG5Xjb-zGrjbI', TRUE, 'es', '550e8400-e29b-41d4-a716-44665544000f');
