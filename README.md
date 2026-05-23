# BACKEND - ESCUCHA TU HISTORIA

1. Estructura BBDD
2. Spring Boot
2. Modelos
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

### UML

<img width="801" height="936" alt="UML Backend drawio" src="https://github.com/user-attachments/assets/0e308d78-8e2f-4987-8986-5e80b4b600a1" />


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

Vamos a explicar los servicios de la ruta a través de su CRUD

#### Operaciones CREATE

La gestión de creación de las rutas se controla a través del endpoint `@PostMapping("/admin/route/")`. Este método a través del Body de la petición recibirá un objeto ruta y lo trabajará de la siguiente manera:

1º Le asignará un UUID para asegurar que siempre se generé un identificador único gracias a Hibernate.
```JAVA - Ruta (modelo)
@Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String id;
```
2º Una vez tenga este UUID guardá el momento de creación mediante LocalDateTime.now() y actualiza también la ultima modificación, aunque en este caso sería la primera.
3º Extrae el listado de monumentos que recibe y comprueba que existan en la base de datos utilizando `.filter(monument -> monument != null)` para garantizar que recibe los monumentos de forma correcta.
4º Por ultimo comprueba el estado de todos los monumentos ya que aunque el body reciba un <mark>activate: true</mark> si recibe una lista de monumentos vacia o con todos desactivados la ruta se creará pero permanecerá en estado de desactivado hasta que mínimo uno de sus monumentos estén activados para asi no ofrecer en front una ruta "vacia".


```JAVA - RouteController
@PostMapping("/admin/route")
    public ResponseEntity<Optional<Ruta>> saveRoute(@RequestBody Ruta route) {
        return ResponseEntity.ok(routeService.save(route));
    }
```


```JAVA - RouteService
public Optional<Ruta> save(Ruta route) {
	if (route.getId() == null) {
            route.setCreatedAt(LocalDateTime.now());
        }
        route.setLastModified(LocalDateTime.now());

        if (route.getMonuments() != null) {
            List<Monument> realMonuments = route.getMonuments().stream()
                    .map(monument -> monumentRepository.findById(monument.getId()).orElse(null))
                    .filter(monument -> monument != null)
                    .collect(Collectors.toList());
            route.setMonuments(realMonuments);
        }

        if (Boolean.TRUE.equals(route.getActivate()) && !route.canBeActive()) {
            route.setActivate(false);
        }

        Ruta savedRoute = routeRepository.save(route);

        return getById(savedRoute.getId());
    }
```

#### Operación READ

Para la optención de las rutas nuestro Controlador ofrece 2 formas distintas. Podemos obtener todas las rutas o indicar la que queremos usando el ID

Vamos a pasar a explicar como trae todas las rutas y que parámetros podemos utilizar para filtrar resultados y para ello utilizamos el endpoint publico `@GetMapping("/public/route")` en el controlador.

Este endpoint devolverá automáticamente un json con todas las rutas sin filtro y sin paginación pero podemos utilizar diferentes filtros para devolver las rutas que al usuario le interesen.

- name: podremos devolver todas las rutas que en su nombre contenga el String que se le pase como parámetro.
- activate: podremos devolver las rutas que esten o no activas según precise el usuario.
- tag: Si el usuario indica el nombre de la etiqueta que quiere filtrar obtendrá las rutas pertinentes.

Una vez realizado el filtrado el servicio se encargará de calcular la distancia total de las rutas excluyendo todo monumento que este desactivado y utilizando el teorema de Haversine que explicamos un poco más arriba.

```
for (Monument monument : route.getMonuments()) {
    if (monument.getActivate()) { 
        if (monumentoAnterior == null)
            monumentoAnterior = monument;
        else {
            distanciaTotalMetros += GeoUtils.teoremaHaversine(monument, monumentoAnterior);
            monumentoAnterior = monument;
        }
    }
}
```

Ahora ya tenemos las rutas preparadas para ofrecérselas al usuario y solo nos queda ordenar como este lo desee. En este caso podemos ordenar las rutas por:
- Dificultad, de más fáciles a más difíciles o viceversa.
- Puntuación: de mejor a peor valoradas por los usuarios
- Distancia total: Gracias a los cálculos de distancia podemos organizarlas de más largas a más cortas o al contrario
- Por tiempo estimado: Aprovechándonos de la velocidad media a la que se mueve un humano de normal.

En caso de empate o de no indicarse un método de ordenación siempre devolveremos por orden de creación.

```JAVA - Controller
public List<Ruta> getAllRoutes(
            @RequestParam(required = false) String name,
            @RequestParam(name = "isActive", required = false) Boolean activate,
            @RequestParam(required = false) String tag,
            @RequestParam(required = false) String sortBy,
            @RequestParam(required = false) String orderBy
    ) {
        System.out.println("tag = " + tag);
        return routeService.findByFilters(name, activate, tag, sortBy, orderBy);
    }
```

```
JAVA - Service
public List<Ruta> findByFilters(
            String name,
            Boolean activate,
            String tag,
            String sortBy,
            String orderBy
    ) {
        Specification<Ruta> spec = Specification.where(RouteSpecifications.hasName(name)
                .and(RouteSpecifications.isActive(activate))
                .and(RouteSpecifications.hasTag(tag)));

        List<Ruta> routes = routeRepository.findAll(spec).stream()
                .map(this::calculateRouteStats)
                .collect(Collectors.toList());

        routes.sort(getRouteComparator(sortBy, orderBy));

        return routes;
    }
```

Por otro lado si el usuario quiere una ruta especifica podrá buscarla utilizando el ID mediante el endpoint `@GetMapping("/public/route/{id}")` donde utilizamos Optical<Ruta> en vez de devolver una ruta para cubrirnos de la posibilad de que la ID utilizada no exista en la base de datos. Claramente aquí no aceptamos parámetros porque para buscar una ruta en especifico solo necesitamos su id

```
JAVA - Controller
@GetMapping("/public/route/{id}")
    public ResponseEntity<Ruta> getRouteById(@PathVariable String id) {
        Optional<Ruta> route = routeService.getById(id);
        return route.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
```

```
JAVA - Service
public Optional<Ruta> getById(String id) {
        return routeRepository.findById(id)
                .map(route -> this.calculateRouteStats(route));
    }
```

#### Operación Update

Para esta parte de las operaciones tenemos también dos métodos contamos con un método PUT y un método PATCH

Empezaremos hablando del método PATCH que utilizaremos mediante el endpoint privado `@PatchMapping("/admin/route/{id}/activate")` con este método y solo indicando en el endpoint el ID de la ruta que queremos modificar podremos activar y desactivarla sin tener que depender de que en el body de la petición indiquemos TODOS los datos de la ruta.

```JAVA - CONTROLADOR
@PatchMapping("/admin/route/{id}/activate")
    public ResponseEntity<Ruta> activaRuta(@PathVariable String id) {   
        Ruta rutaActualizada = routeService.activateRoute(id);
        if (rutaActualizada == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(rutaActualizada);
    }
```

```JAVA - SERVICE
public Ruta activateRoute(String id) {
        Ruta ruta = routeRepository.findById(id).orElse(null);
            if (ruta == null) {
                return null;
            }
        ruta.setActivate(!ruta.getActivate());
        return routeRepository.save(ruta);
    }
```

Por otro lado tenemos el método PUT que utilizaremos para modificar los datos de la ruta que nos interese. Para acceder a esta función el usuario deberá usar el endpoint privado `@PutMapping("/admin/route/{id}")` y deberá acompañar la petición con un body con todos los datos de ruta se hayan o no modificado.

El controlador lo primero que hará será comprobar si existe el id que recibirá como parámetro la petición tras la comprobación realizará un update de todos los datos que acompañen al objeto en el body. Una vez listo reutilizamos la función de save del servicio para procurar que todo quede almacenado en la base de datos

```JAVA CONTROLADOR
@PutMapping("/admin/route/{id}")
    public ResponseEntity<Optional<Ruta>> updateRoute(@PathVariable String id, @RequestBody Ruta routeUpdated) {
        if (!routeService.existsById(id)) {
            return ResponseEntity.notFound().build();
        }

        routeUpdated.setId(id);
        return ResponseEntity.ok(routeService.save(routeUpdated));
    }
```

#### Operación DELETE

La ultimá función que podrá realizar nuestro controlador en cuanto a las rutas es la función de DELETE que al igual que todas las peticiones que son de administración usan un endpoint privado que necesita autentificación para poder utilizarlo. En este caso el endpoint es el siguiente `@DeleteMapping("/admin/route/{id}")`. Este endpoint recibe como parámetro el id del monumento que queremos eliminar de la base de datos. 

El controlador lo primero que realiza es una comprobación para ver si existe dicha ruta y una vez localizado le realiza un delete en la base de datos.

```JAVA CONTROLLER
@DeleteMapping("/admin/route/{id}")
    public ResponseEntity<Void> deleteRoute(@PathVariable String id) {
        if (!routeService.getById(id).isPresent()) {
            return ResponseEntity.notFound().build();
        }
        routeService.deleteById(id);
        return ResponseEntity.noContent().build();
    }
``` 

```JAVA SERVICE
public void deleteById(String id) {
        routeRepository.deleteById(id);
    }
```

#### MonumentSummary

Antes de pasar al siguiente modulo hay que hablar del DTO que usa el modelo Rutas para traer los Monumentos ya que en vez de usar una lista Monumentos con todos sus datos lo que usamos es una versión resumida con menos información pero más precisa y útil para mostrar en las rutas. Este <kbd>MonumentSummary</kbd> devuelve los siguientes datos:

| Atributo Java | Columna BBDD | Tipo | Observaciones |
|-|-|-|-|
|ID|ID|String|Necesario para localizar los monumentos de forma rapida|
|name|name|String|Nombre para reconocer el monumento|
|coordenate|-|Mapa<String,Doble>|Un mapa contiene la latitud y la longitud necesarios para calculas distancias|
|piciture|-|List<Picture>|Toda la lista de fotos del monumento para poder usarlas al mostrar las rutas en la APP|

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

A continuación vamos a explicar debidamente el CRUD que compone el controlador de las noticias.

#### Operación CREATE

La gestión de las noticias se controla a través del endpont `@PostMapping("/admin/news")`. Este método recibirá a través del body de la petición un objeto de tipo Noticia y lo procesará de la siguiente manera.

1º Al igual que en las rutas, se le asignará un UUID de forma automática para asegurar que siempre se genere un identificador alfanumérico único en la base de datos gracias a las anotaciones de Hibernate.

```MODELO
@Id
@GeneratedValue(strategy = GenerationType.UUID)
private String id;
```

2º Una vez que la noticia pasa al servicio, se comprueba si es una inserción nueva verificando si su ID es nulo. En caso afirmativo, se almacena el momento de creación mediante LocalDateTime.now() y se actualiza también la última modificación. Al definir updatable = false en el modelo para createdAt, nos aseguramos de que la fecha de creación original nunca se sobrescriba por error en futuras actualizaciones.

``` JAVA - CONTROLLER
@PostMapping("/admin/news")
public ResponseEntity<Noticia> saveNews(@RequestBody Noticia noticia) {
    return ResponseEntity.ok(noticiaService.save(noticia));
}
```

``` JAVA - SERVICe
public Noticia save(Noticia noticia) {
    if (noticia.getId() == null) {
        noticia.setCreatedAt(LocalDateTime.now());
    }
    noticia.setLastModified(LocalDateTime.now());

    return noticiaRepository.save(noticia);
}
```

#### Operación READ

En las funciones de READ también ofrecemos dos formas distintas de realizar el GET, devolviendo la lista con todas las noticias o devolver únicamente la que pertenezca el ID correspondiente.

Empezando por la función de devolverlos todos usaremos el enpoint publico `@GetMapping("/public/news")`. A diferencia de las rutas que teníamos muchos filtros aquí hemos decidido que no aplicaremos filtros y solo permitiremos la ordenación cronológica de las noticias mediante el parámetro opcional *orderBy* donde se deberá indicar si ordenar de forma ascendente o descendente.

```
@GetMapping("/public/news")
public List<Noticia> getAllNews(@RequestParam(required = false) String orderBy) {
    return noticiaService.findAll(orderBy);
}
```
```
public List<Noticia> findAll(String orderBy) {
    Sort.Direction direction = Sort.Direction.DESC;

    if (orderBy != null && !orderBy.isBlank()) {
        direction = "asc".equalsIgnoreCase(orderBy)
                ? Sort.Direction.ASC
                : Sort.Direction.DESC;
    }

    return noticiaRepository.findAll(Sort.by(direction, "createdAt"));
}
```

Por otro lado, si el usuario hace clic en una noticia para leer el artículo completo, el frontend buscará esa publicación específica usando su ID mediante el endpoint `@GetMapping("/public/news/{id}")`. Aquí volvemos a apoyarnos en la clase Optional<Noticia> de Java para prevenir excepciones si se introduce un ID de noticia que no existe, devolviendo un limpio error 404.

```JAVA CONTROLLER
@GetMapping("/public/news/{id}")
public ResponseEntity<Noticia> getNewById(@PathVariable String id) {
    Optional<Noticia> noticia = noticiaService.getById(id);
    return noticia.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
}
```

#### Operación UPDATE

En este módulo, la operación de actualización también se divide en dos métodos bien diferenciados mediante el verbo PUT, separando la edición de contenido del cambio de estado (Publicación).

Empezaremos hablando del método de publicación que utilizaremos mediante el endpoint privado `@PutMapping("/admin/news/{id}/publish")`. Dado que una noticia maneja distintos estados (0: Borrador, 1: Desactivada, 2: Publicada), este endpoint específico automatiza la transición. El servicio busca la noticia, le cambia el estado automáticamente a <kbd>2</kbd>, y le inyecta la fecha y hora exacta del momento en el que se ejecuta la acción mediante <kbd>LocalDateTime.now() en la variable fecha_publicacion</kbd>.

``` CONTROLLER
@PutMapping("/admin/news/{id}/publish")
public ResponseEntity<Noticia> publishNews(@PathVariable String id) {
    Optional<Noticia> noticiaPublicada = noticiaService.publishNoticia(id);
    return noticiaPublicada.map(ResponseEntity::ok)
            .orElseGet(() -> ResponseEntity.notFound().build());
}
```

``` SERVICE
public Optional<Noticia> publishNoticia(String id) {
    System.out.println("cambiando la noticia con id" + id);
    return noticiaRepository.findById(id).map(noticia -> {
        noticia.setEstado(2); // 2 = Publicado
        noticia.setFecha_publicacion(LocalDateTime.now());
        noticia.setLastModified(LocalDateTime.now());
        return noticiaRepository.save(noticia);
    });
}
```

Por otro lado, tenemos el método PUT estándar que utilizaremos para editar el texto, las imágenes o el título de la noticia. Para acceder a esta función, el administrador deberá usar el endpoint `@PutMapping("/admin/news/{id}")` enviando en el body el objeto completo. El controlador comprobará su existencia, blindará el id para evitar sobrescrituras cruzadas y reutilizará la función save del servicio

```
@PutMapping("/admin/news/{id}")
public ResponseEntity<Noticia> updateNews(@PathVariable String id, @RequestBody Noticia noticiaUpdated) {
    if (!noticiaService.existsById(id)) {
        return ResponseEntity.notFound().build();
    }

    noticiaUpdated.setId(id);
    return ResponseEntity.ok(noticiaService.save(noticiaUpdated));
}
```

#### Operación DELETE

Por último, la función de eliminación permite gestionar el ciclo de vida final del contenido. Como el resto de métodos destructivos, emplea un endpoint privado que requiere autenticación: `@DeleteMapping("/admin/news/{id}")`.

El controlador recibe el ID de la noticia a eliminar, verifica que exista en la base de datos (respondiendo con un 404 si no es así) y ejecuta el borrado físico a través del repositorio, finalizando con un código de estado `204 No Content` para indicar que la operación fue satisfactoria y no hay cuerpo de respuesta.

```
@DeleteMapping("/admin/news/{id}")
public ResponseEntity<Void> deleteNews(@PathVariable String id) {
    if (!noticiaService.existsById(id)) {
        return ResponseEntity.notFound().build();
    }
    noticiaService.deleteById(id);
    return ResponseEntity.noContent().build();
}
```

```
public void deleteById(String id) {
    noticiaRepository.deleteById(id);
}
```

## 🎉 Resultados

Por último vamos a mostrar algunos resultados que nos devuelve postman al realizar las peticiones pertinentes:

/api/v1/public/routes

![image.png](https://raw.githubusercontent.com/bucketio/img4/main/2026/05/21/1779366020662-59043ca8-4697-49dc-bb79-da63f3a01cbf.png 'json rutas')

/api/v1/public/news

![image.png](https://raw.githubusercontent.com/bucketio/img19/main/2026/05/21/1779366149705-524e4b41-c713-4bc4-9237-123f32b17d58.png 'json noticias')
