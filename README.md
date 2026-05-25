# Escucha tu historia <img align="right" width="50" height="50" alt="logo_escuchatuhistoria_sinfondo" src="https://github.com/user-attachments/assets/33dbb173-0ae9-48a0-ada3-f12336bc73b0" />


<div align="center">

![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![SpringBoot](https://img.shields.io/badge/SpringBoot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-31648C?style=for-the-badge&logo=postgresql&logoColor=white)
![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)

</div>

<div align="center">
  <strong>Backend para aplicación móvil y panel web para descubrir la historia de Martos (Jaén) mediante rutas, monumentos y audios narrados en varios idiomas.</strong>
</div>

Incluye:
 
- Backend en Java Spring Boot  
- Base de datos PostgreSQL alojada en Supabase  
- Almacenamiento de audios e imágenes en Supabase Storage  
- Audios en español (modo normal e infantil) e inglés  
- CRUD completo de monumentos, rutas, noticias, parámetros y estadísticas  

---

# ⚡ 0. ¿En qué consiste?

Escucha tu historia es una plataforma completa diseñada para que cualquier visitante o habitante de Martos pueda descubrir sus monumentos, historia y rutas culturales mediante una experiencia interactiva, accesible y moderna.

> El sistema combina una app móvil en Flutter, un panel de administración web, un backend robusto en Spring Boot y una base de datos en Supabase que almacena tanto la información como los audios e imágenes.

---

## ◻️ Objetivos del proyecto

- Facilitar el turismo cultural en Martos mediante una app intuitiva.  
- Ofrecer audios narrados en español (modo normal e infantil) e inglés.  
- Permitir explorar rutas entre monumentos para conocer la ciudad paso a paso.  
- Proveer un panel de administración para gestionar contenido en tiempo real.  
- Centralizar datos, imágenes y audios en Supabase.  
- Ofrecer estadísticas de uso para mejorar la experiencia del visitante.  

---

## ◻️ ¿A quién ayuda?

- Turistas que visitan Martos y quieren conocer su historia.  
- Familias gracias al modo infantil con audios adaptados.  
- Centros educativos que deseen usar rutas culturales como recurso didáctico.  
- Ayuntamientos y entidades culturales que necesiten gestionar contenido turístico.  
- Desarrolladores que quieran integrar rutas o monumentos en otras apps.  

> La app automatiza la experiencia turística, ofrece accesibilidad lingüística y permite actualizar contenido sin necesidad de publicar nuevas versiones.

---

# 🚀 1. Requisitos previos

- Flutter  
- Java 21+ y Maven  
- Cuenta en Supabase  
- Git  

---

# 📦 2. Instalación y ejecución del proyecto

Clona el repositorio:

```bash
git clone https://github.com/MireyaCueto/Backend_TFG.git
cd escucha-tu-historia
```

## 🔌 Backend (Spring Boot)

```bash
cd backend
mvn spring-boot:run
```

Esto iniciará:  
- Backend → http://localhost:8080   

---

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
