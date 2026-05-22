# BACKEND - ESCUCHA TU HISTORIA

1. Estructura BBDD
2. UML
2. Modelos Spring Boot
3. Servicios y Controladores
4. Resultados


## 🪜 Estructura BBDD

La base de datos esta montada en el SGBD PostgreSQL para que tenga la mejor conectividad posible con el Servicio que vamos utilizar, Supabase.
La base de datos tendra la siguiente estructura siguiendo este Diagrama

![image.png](https://raw.githubusercontent.com/bucketio/img19/main/2026/05/20/1779277082252-816da86c-157d-46d7-8f36-7a93a85db721.png 'image.png')

### 📋 Tablas

Tablas que explicaremos a continuación son las que se utilizarán para brindar toda la información necesaria a las aplicaciones web y movil. Las tablas creadas son las siguientes:

#### 🏦 Monumentos

La tabla Monumento constituye el eje central de la base de datos ya que todo esta destinado a brindar información de los monumentos aqui registrados.

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | Varchar(36) - UUID | Clave identificativa generada automaticamente | Primary Key |
| name | varchar(255) | Nombre del monumento | Not Null |
| activate | Boolean | Boleana para indicar si el monumento esta activo para la aplicación | Por defecto siempre que se añada un nuevo monumento estará en falso |
| lat | Decimal(10,8) | Atributo que guarda la latitud para la localización GPS | - |
| lon | Decimal(10,8) | Atributo que guarda la longitud para la localización GPS  | - |
| tag_id | int | Hace referencia al tag al que esta asociado el monumento  | foreign key referencia al ID de la tabla tags |
| accesibility | Boolean | Bolean que indica si el monumento es tiene facilitado el acceso a minusvalidos  | - |
| maps_url | varchar(500) | El enlace a la entrada del monumento en Google Maps | Puede que no tenga ninguna utilidad propiamente dicha pero esta creada por si el desarrollo en web o en movil lo llegará a necesitar |
| maps_url | varchar(500) | El enlace a la entrada del monumento en Google Maps | Puede que no tenga ninguna utilidad propiamente dicha pero esta creada por si el desarrollo en web o en movil lo llegará a necesitar |
| n_likes | int | Conteo de los likes recibidos de cada monumento | - |
| maps_url | varchar(500) | El enlace a la entrada del monumento en Google Maps | Puede que no tenga ninguna utilidad propiamente dicha pero esta creada por si el desarrollo en web o en movil lo llegará a necesitar |
| localidad_id | int | id de la localidad donde se encuentra el monumento | foreign key referencia al ID de la tabla localidades |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |



#### 🏙️ Localidades

De los monumentos aparecen tablas como la de localidades donde se encuentran los monumentos. Con esta tabla la BBDD se vuelve más escalable y podriamos apuntar a otras poblaciónes incluso a otras provincias.

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | SERIAL | Identificador autoincremental de la localidad | Primary Key |
| name | varchar(255) | Nombre del municipio o localidad | Not Null |
| provincia | varchar(255) | Provincia a la que pertenece | - |
| codigo_postal | INT | Código postal correspondiente | - |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 🏷️ TAGS
La siguiente es la tabla tags que contiene las diferentes etiquetas que identifican a los monumentos

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | INT | Identificador autoincremental de los tags | Primary Key |
| name | varchar(100) | Nombre de la categoría | Not Null |
| description | varchar(255) | Descripción detallada de lo que engloba el tag | - |
| color_hex | CHAR(7) | Código de color para usar en la interfaz y que siempre sean los mismos | - |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 📖 Descripciones

Por otro lado, los monumentos tienen las descripciones en tablas aparte para que las aplicaciones puedan acceder a ellas sin problemas y ya traducidas.

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | INT | Clave identificativa del texto/descripción | Primary Key |
| name | varchar(255) | Título interno asignado a la descripción | Not Null |
| contenido | TEXT | Cuerpo real del texto sobre el monumento | - |
| complete | BOOLEAN | Diferencia si es texto entero (true) o sinopsis (false) | Se comprueba si el boolean de niños ya que la sinopsis nunca puede ser texto para niños |
| kids | BOOLEAN | Indica si es una versión adaptada para niños | - |
| language | VARCHAR(50) | Código o nombre del idioma del texto | - |
| id_monumento | VARCHAR(36) | Monumento al que pertenece esta descripción | Foreign Key del id del monumento al que pertenece el texto |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 📷 Imagenes

La tabla 'pictures' guarda las urls que llevan a las fotos de los monumentos

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | INT | Clave identificativa de la imagen | Primary Key |
| url | TEXT | Ruta o enlace donde está alojada la imagen | Not Null |
| id_monumento | VARCHAR(36) | Monumento al que pertenece esta imagen | Foreign Key del id del monumento al que pertenece el texto |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 🎧 Audios

Al igual que la tabla 'pictures'  necesitaremos una tabla para guardar las urls que llevan a los audios de los monumentos.

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | INT | Clave identificativa del audio | Primary Key |
| url | TEXT | Ruta o enlace donde está alojado el audio | Not Null |
| kids | BOOLEAN | Indica si es una versión adaptada para niños | - |
| language | VARCHAR(50) | Código o nombre del idioma del audio | - |
| id_monumento | VARCHAR(36) | Monumento al que pertenece este audio | Foreign Key del id del monumento al que pertenece el texto |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 🛤️ Rutes

Tabla de rutas en la que se guardán la lista de las rutas existentes

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | VARCHAR(36) | Clave identificativa de la noticia (UUID) | Primary Key |
| name | VARCHAR(60) | Nombre asignado a la ruta turística | - |
| description | TEXT | Explicación detallada de la ruta | Not Null |
| active | BOOLEAN | Indica si la ruta se muestra en la aplicación | Por default se guardan como falso por si no están terminadas las rutas |
| difficult | INT | Nivel de dificultad (0 = fácil, 1 = medio, 2 = difícil) | CHECK para comprobar que el valor indicado esta entre 0 y 2 |
| tag_id | INT | Id referencia al tag que lo identifica | Foreign Key que relaciona la ruta con tags |
| localidad_id | INT | Localidad en la que transcurre la ruta | Foreign Key que relaciona la ruta con las localidades | 
|created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 🏦-🛤️ rutes_monumentos

Tabla de relación entre monumentos y rutas

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id_rutes | VARCHAR(36) | Identificador de la ruta | Primary Key compuesta / Foreign Key (rutes) |
| id_monumento | VARCHAR(36) | Identificador del monumento incluido en la ruta | Primary Key compuesta / Foreign Key (monumento) |

#### 📰 Score

Tabla destinada a guardar las puntuaciones que realicen los usuarios. Dado que no hay registros los usuario para guardar las puntuaciones sin que el mismo usuario pueda votar varias veces usaremos el identificador visible del movil

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id_device | TEXT | Huella o identificador del móvil del usuario | Primary Key Compuesta |
| id_rutes | VARCHAR(36) | id de la Ruta que se está valorando | Primary Key compuesta / Foreign Key (rutes) |
| score | DOUBLE PRECISION | Puntuación numérica otorgada a esa ruta | Default puntuación minima |


#### 📰 Noticias

Apartado del tema de la infomación de los monumentos existen otras tablas dirigidas a guardar información como el caso de la siguiente que es la tabla 'noticias'

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | VARCHAR(36) | Clave identificativa de la noticia (UUID) | Primary Key |
| titulo | VARCHAR(255) | Título principal de la publicación | Not Null |
| subtitulo | VARCHAR(500) | Entradilla o subtítulo | Not Null |
| contenido | TEXT | Cuerpo completo de la noticia o artículo | Not Null |
| estado | INT | Controla la visibilidad (0=Borrador, 1=Oculto, 2=Publicado) | Default 0 ya que las noticias empiezan registradas como 'Borrador' |
| fecha_publicacion | TIMESTAMP | Fecha programada para que salga la noticia | - |
| imagen_url | TEXT | URL de la imagen de cabecera de la noticia | - |
| created_at | TIMESTAMP | Fecha y hora en la que se creó el registro | Dato inmutable |
| last_modified | TIMESTAMP | Fecha y hora de la última modificación | Este dato se modifica con cada modificación realizada |

#### 📊 Stats

Estadisticas de cantidad de descargas registradas dependiendo de la plataforma donde se consiga la app

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | SERIAL | Identificador autoincremental de la estadística | Primary Key |
| name_service | VARCHAR(40) | Nombre de la plataforma (ej: Play Store, App Store) | Apartado que no puede ser nulo y cuyo registro es unico junto con la fecha de registro de los datos|
| n_downloads | INT | Número de descargas registradas en ese día | Default numero de descargas minimo es 1 |
| regis_date | DATE | Día natural al que corresponden las estadísticas | Default numero de descargas minimo es 1 |

#### ⭐ App_reviews

Tabla destinada a guardar la suma de todas las puntuaciones dadas por los usuarios para poder devolver la media de las puntuaciones

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | SERIAL | Identificador autoincremental de la reseña | Primary Key |
| id_device | VARCHAR(255) | Identificador del dispositivo del usuario | Not Null |
| score | INT | Nota global dada a la aplicación | DEFAULT 0 / CHECK: Rango restringido de 0 a 5 |
| created_at | TIMESTAMP | Fecha y hora en la que se realizó la valoración | - |

#### 🎚️ Control

Tabla destinada a guardar la configuración de que apartados estan activos para visitar en web o movil

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | SERIAL | Identificador autoincremental de la reseña | Primary Key |
| name | VARCHAR(40) | Nombre de la funcionalidad a controlar | Not Null |
| active | BOOLEAN | Indica si la funcionalidad del sistema está activa | DEFAULT True |
| created_at | TIMESTAMP | Fecha y Hora de creación del registro | - |
| last_modified | TIMESTAMP | Fecha y Hora de la última modificación | - |

####  🤖 Stats IA

Tabla que guarda la cantidad de peticiones realizadas en la IA y cuantas han sido peticiones fallidas

| Clave | Tipo | Descripción | Observaciones |
| - | - | - | - |
| id | SERIAL | Identificador autoincremental | Primary Key |
| name_count | VARCHAR(60) | Indica si son peticiones realizadas o fallidas | UNIQUE |
| count | INT | Número de veces que se ha solicitado o ejecutado | DEFAULT 0 |
| created_at | TIMESTAMP | Fecha y hora en la que se realizó la valoración | - |
| last_modified | TIMESTAMP | Fecha y Hora de la última modificación | - |

## 🍃 Spring Boot

Para montar este backend hemos elegido Spring Boot, un framework de Java que nos permite crear aplicaciones independientes y listas para producción con un mínimo de configuración inicial.

El backend nos mapea los datos y mediante utilidades también nos realizará los calculos geográficos necesarios.

### 🔒Seguridad y control de acceso.

Para controlar el acceso hemos configurado los CORS para permitir que el frontend se comunique con el backend sin bloqueos de seguridad del navegador. Se permiten los métodos HTTP principales de (GET, POST, PATCH, PUT, DELETE, OPTIONS).

Tambien hemos diseñado una arquitectura de acceso divida en dos:

- <kbd> /api/v1/public/* </kbd>:Son rutas de acceso libre para que la aplicación movil no necesite autentificación y puedan consultarse libremente
-  <kbd> /api/v1/admin/* </kbd>:Son rutas protegidas que exigen autentificación y estan destinadas para gestión web

### 📈 Persistencia e inicialización de datos

La conexión con la base de datos la gestionamos a traves de Hibernate. Aunque Spring boot se puede autoconfigurar esta configurado mediante hibernate de forma manual sobre las propiedades de conexión y definir si el esquema de la base de datos debe actualizarse automaticamente.

### 📐 Utilidades y cálculos matemáticos

El sistema incluye calculos para determinar la distancia entre monumentos mediante la diferencia entre coordenadas.

Para este calculo usamos la Fórmula del Haversine:

![27240436-e9a459da-52d4-11e7-8f84-f96d0b312859.png](https://raw.githubusercontent.com/bucketio/img7/main/2026/05/21/1779354191666-8bb4aa9f-8476-49e9-8a38-ccf6dea4d98a.png 'Fórmula de Haversine')

Con esta formula utilizamos un ratio de la tierra (6378,1Km) y mediante calculos trigonometricos podemos ver la distancia que hay entre 2 puntos en linea recta.

Gracias a esta formula hemos podido calcular tambien la distancia completa de una ruta o incluso lo que una persona promedio podria tardar en recorrerla.

## UML

classDiagram
    direction TB

    class Monument {
        +String id
        +String name
        +Double lat
        +Double lon
        +String mapsUrl
        +Integer nLikes
        +Boolean activate
        +String accessibility
        +LocalDateTime createdAt
        +LocalDateTime lastModified
        +setActivate(Boolean)
    }

    class Route {
        +String id
        +String name
        +Double distanceKm
        +Integer durationMinutes
        +Boolean activate
        +setActivate(Boolean)
    }

    class Notice {
        +String id
        +String title
        +String content
        +LocalDateTime publishedAt
    }

    class Tag {
        +String id
        +String name
    }

    class Localidad {
        +String id
        +String name
        +String province
    }

    class User {
        +String username
        +String password
        +String role
    }

    %% Relaciones entre clases
    Monument "*" --> "1" Localidad : pertenece a (localidad_id)
    Monument "*" --> "1" Tag : categorizado por (tag_id)
    Route "*" --> "*" Monument : incluye (calculado por GeoUtils)

## Modelos

En este proyecto los diferentes modelos que construyen el proyecto completo los que vamos a tratar son los siguientes.

En todos los modelos garantizamos que la API devuelva los datos de forma organizada utilizando @JsonPropertyOrder para entregar los campos de forma organizada.

### 🏙️ Localidades

La entidad Localidades es un modelo de soporte geográfico fundamental para agrupar los monumentos por localidades.

| Atributo Java | Columna BBDD | Tipo | Observaciones |
|-|-|-|-|
| id | id | Integer | Autoincremental (IDENTITY).
| name | name | String | Obligatorio (nullable = false) |
| codigoPostal | codigo_postal | Integer | Mapeado con snake_case en JSON (codigo_postal) |
| createdAt | created_at | LocalDateTime | Inmutable (updatable = false) |

### 🛤️ Ruta

El modelo Ruta es una clase que sirve para organizar multiples monumentos e indicar los calculos de distancias entre monumentos pertenecientes en la misma ruta. Las rutas tienen varias caracteristicas además de las que tienen en tablas:

- Campos calculados: El modelo Ruta tiene los datos de "averageScore", "totalDistanceMeters" y "estimatedTimeSeconds" son campos que con la anotación @Transient para que Spring no busquen los datos en la base de datos sino que obtenerlos deberemos hacer calculos e inyectarlos.
- Gestión de relaciones: La relación de las rutas con otras monumentos mediante la tabla intermedia rutes_monumentos. Para optimizar las peticiones HTTP y no devolvemos un ID sino una versión resumida del modelo de Monumentos (MonumentSummary)
- Control de activos: Se ha implementado un metodo simplemente para verificar que no se pueda devolver una ruta como "activada" si todos sus monumentos esten "desactivados"

| Atributo Java | Columna BBDD | Tipo | Observaciones |
| -| -| -|-| 
| id | id | String | Clave primaria generada como UUID (GenerationType.UUID) | 
| description | description | String | Configurado como TEXT para soportar descripciones largas. |
| monuments | Monumentos relacionados en monuments-routes | List<Monument> | Relación muchos a muchos ignorada en la serialización directa con @JsonIgnore | 
| tag | tag_id | Tag | Relación @ManyToOne. |
| createdAt | created_at | LocalDateTime | Inmutable (updatable = false) |

#### DTO - MonumentSummary

Para optimizar los datos que reciben los usuarios de movil entregamos un listado de monumentos con datos resumidos.

| Atributo en el DTO | Tipo de Dato | Origen / Función |
| - | - | - |
| id | String | Extraído directamente de monument.getId() |
| name | String | Extraído de monument.getName() |
| coordenates | Map<String, Double> | Mapa estructurado (Latitud y Longitud). |
| pictures | List<Picture> | Lista de imágenes del monumento, pre-ordenada por ID. |

### 📰 Noticias

La entidad Noticia gestiona las publicaciones de noticias. Tienen varias caracteristicas a destacar::

- Soporte para Textos y URLs largas: Los atributos contenido e imagenUrl utilizan el parámetro columnDefinition = "TEXT" dentro de la anotación @Column, garantizando que la base de datos no trunque artículos largos ni enlaces de imágenes pesadas.
- Control de Estado: Utiliza un campo entero (estado) para controlar el flujo de publicación:
  - 0 para Borrador
  - 1 para Desactivada
  - 2 para Publicada.
    
| Atributo Java | Columna BBDD | Tipo | Observaciones |
|- | -| - | - |
|  id | id | String | UUID autogenerado  |
| title | titulo | String | Mapeado al JSON como titulo mediante @JsonProperty.  |
| contenido | contenido | String | Tipo TEXT en base de datos. |
| estado | estado | Integer | "Visibilidad de la noticia (0, 1 o 2)." |
| fecha_publicacion | fecha_publicacion | LocalDateTime | Fecha en la que la noticia sale a la luz. |

### 🏷️ Tag

La entidad Tag se encarga de categorizar visual y temáticamente los diferentes puntos de interés y rutas del sistema.

| Atributo Java | Columna BBDD | Tipo | Observaciones |
|- | -| - | - |
| id | id | Integer | Autoincremental |
| name | nombre | String | Se llama nombre en BD pero se mapea como name en el JSON |
| colorHex | color_hex | String | Código visual (Ej: #FF0000). |


## ⚙️ Servicios y Controlador

En este apartado detallamos la arquitectura lógica del backend, la cual se ha diseñado siguiendo el patrón de Arquitectura en Capas. Esta separación garantiza que el código sea mantenible y escalable.

La estructura la dividimos en tres niveles:

- Capa de Acceso(Repositories): Interfaces que extienden de JpaRepository y se encargan de las consultas directas a PostgreSQL/Supabase mediante Spring Data JPA.
- Capa de Lógica de Negocio: Componentes anotados con @Service donde se procesan las reglas de la aplicación, se realizan los cálculos complejos y se transforma la información antes de ser guardada o enviada.
- Capa de Exposición: Clases anotadas con @RestController que exponen los endpoints. Se encargan de recibir las peticiones HTTP y validar los datos de entrada y utilizar el servicio correspondiente

### Modulo Rutas

La clase RouteService centraliza todas las reglas de negocio asociadas a los recorridos turísticos. Sus endpoints son:

| Método | Endpoint | Acceso | Descripción |
|- | -| - | - | 
| GET | /api/v1/public/route | Público | "Lista todas las rutas con soporte para múltiples filtros (name, isActive, tag) y parámetros de ordenación (sortBy, orderBy)." |
| GET | /api/v1/public/route/{id} | Público | Obtiene el detalle completo de una ruta específica por su ID. |
| POST | /api/v1/public/route/{routeId}/score | Público | Permite a un dispositivo (id_device) enviar una valoración (Score) para la ruta indicada. |
| POST | /api/v1/admin/route | Protegido | Crea una nueva ruta en el sistema. |
| PUT | /api/v1/admin/route/{id} | Protegido | Actualiza los datos de una ruta existente mediante su ID. |
| PATCH | /api/v1/admin/route/{id}/activate | Protegido | Endpoint ligero diseñado exclusivamente para alternar (activar/desactivar) la visibilidad de la ruta. |
| DELETE | /api/v1/admin/route/{id} | Protegido | Elimina una ruta de la base de datos. |

### Módulo Noticias

Este módulo se encarga de gestionar el apartado de novedades y blogs de la aplicación, controlando los estados de publicación y facilitando el acceso a los textos y contenidos audiovisuales. Sus endpoints son:

| Método | Endpoint | Acceso | Descripción |
| - | - | - | - |
| GET | /api/v1/public/news | Público | Obtiene el listado completo de noticias. Permite alterar el orden pasando el query param ?orderBy=asc/desc. |
| GET | /api/v1/public/news/{id} | Público | Obtiene todos los detalles (incluyendo textos completos en formato TEXT) de una noticia en base a su ID. |
| POST | /api/v1/admin/news | Protegido | Crea y guarda una nueva noticia (estado inicial recomendado: Borrador) |
| PUT | /api/v1/admin/news/{id} | Protegido | Sobrescribe los datos completos de una noticia existente. |
| PUT | /api/v1/admin/news/{id}/publish | Protegido | "Transiciona el estado interno de la noticia a ""Publicado"" y registra la fecha de publicación." |
| DELETE | /api/v1/admin/news/{id} | Protegido | Borra definitivamente la noticia del sistema. |

## 🎉 Resultados

Por último vamos a mostrar algunos resultados que nos devuelve postman al realizar las peticiones pertinentes:

/api/v1/public/routes

![image.png](https://raw.githubusercontent.com/bucketio/img4/main/2026/05/21/1779366020662-59043ca8-4697-49dc-bb79-da63f3a01cbf.png 'json rutas')

/api/v1/public/news

![image.png](https://raw.githubusercontent.com/bucketio/img19/main/2026/05/21/1779366149705-524e4b41-c713-4bc4-9237-123f32b17d58.png 'json noticias')
