\c postgres

DROP DATABASE IF EXISTS monumentos;
CREATE DATABASE monumentos;

\c monumentos

-- Script SQL generado a partir del modelo Entidad-Relación proporcionado.
-- Se ha empleado sintaxis estándar (compatible con MySQL/MariaDB).

-- Creación de la tabla tags
CREATE TABLE tags (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    color_hex CHAR(7) CHECK (color_hex LIKE '#%'),  -- Para colores en formato #RRGGBB
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla de Localidades (Relación 1:N con Monumento y Rutas)
CREATE TABLE localidades(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    provincia VARCHAR(255),
    codigo_postal INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla principal Monumento
-- Nota: Los atributos description, pictures, tags y audios indicados en el cajetín izquierdo
-- han sido omitidos de esta tabla ya que están n   ormalizados en tablas separadas por las relaciones.
CREATE TABLE Monumento (
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    activate BOOLEAN DEFAULT FALSE,
    lat DECIMAL(10, 8),
    lon DECIMAL(11, 8),
    tag_id int,
    accessibility BOOLEAN,
    maps_url VARCHAR(500),
    n_likes INT DEFAULT 0,
    localidad_id INT,
    FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE,
    FOREIGN KEY (localidad_id) REFERENCES localidades(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla description (Relación 1:N con Monumento)
CREATE TABLE description (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contenido TEXT,              -- Contenido real de la descripción
    complete BOOLEAN,            -- Indica si es texto entero (true) o sinopsis (false)
    kids BOOLEAN,                -- Indicador de si está adaptado/es para niños
    language VARCHAR(50),        -- Escrito como 'language' en el diagrama
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_monumento VARCHAR(36),
    FOREIGN KEY (id_monumento) REFERENCES Monumento(id) ON DELETE CASCADE,
    CHECK (NOT (kids = TRUE AND complete = FALSE))
);

-- Creación de la tabla audios (Relación 1:N con Monumento)
CREATE TABLE audios (
    id INT PRIMARY KEY,
    url text NOT NULL,
    kids BOOLEAN,                -- Indicador de si es un audio para niños
    language VARCHAR(50),        -- Escrito como 'lenguage' en el diagrama
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_monumento VARCHAR(36),
    FOREIGN KEY (id_monumento) REFERENCES Monumento(id) ON DELETE CASCADE
);

-- Creación de la tabla pictures (Relación 1:N con Monumento)
CREATE TABLE pictures (
    id INT PRIMARY KEY,
    url text NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_monumento VARCHAR(36),
    FOREIGN KEY (id_monumento) REFERENCES Monumento(id) ON DELETE CASCADE
);

CREATE TABLE noticias (
    id VARCHAR(36) PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    subtitulo VARCHAR(500),
    contenido TEXT NOT NULL,
    estado INT DEFAULT 0,  -- Ej: 0 = Borrador, 1 = Oculto 2 = Publicado,
    fecha_publicacion TIMESTAMP, -- Permite nulos (DateTime?)
    imagen_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla rutas
-- El tiempo y la distancia totales se caculan en backend antes de enviar datos
CREATE TABLE rutes(
    id VARCHAR(36) PRIMARY KEY,
    name varchar(60),
    description TEXT,
    active BOOLEAN DEFAULT FALSE,
    -- Dificultad 0 - facil, 1 - medio - 2 dificil
    difficult int, 
    tag_id int,
    localidad_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CHECK (difficult >= 0 AND difficult <= 2),
    FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE SET NULL,
    FOREIGN KEY (localidad_id) REFERENCES localidades(id) ON DELETE CASCADE
);

-- Tabla para hacer medias de puntuaciones
Create table score(
    id_device TEXT,
    id_rutes varchar(36),
    score DOUBLE PRECISION DEFAULT 0.0,
    PRIMARY KEY (id_device, id_rutes),
    FOREIGN KEY (id_rutes) REFERENCES rutes(id) on DELETE CASCADE
);

CREATE TABLE rutes_monumentos(
    id_rutes varchar(36),
    id_monumento VARCHAR(36),
    PRIMARY KEY (id_rutes, id_monumento),
    FOREIGN KEY (id_rutes) REFERENCES rutes(id) on DELETE CASCADE,
    FOREIGN KEY (id_monumento) REFERENCES monumento(id) on DELETE CASCADE
);

-- Tabla para las estadisticas simuladas traidas de google play, apple store y APK Web

Create Table stats(
    id Serial,
    name_service varchar(40) NOT NULL,
    n_downloads int DEFAULT 0,
    regis_date Date DEFAULT CURRENT_DATE,
    PRIMARY KEY(id),
    UNIQUE(name_service, regis_date)
);

Create Table app_reviews(
    id Serial,
    id_device Varchar(255) NOT NULL,
    name_service varchar(40) NOT NULL UNIQUE,
    score INT DEFAULT 0 CHECK(score >= 0 AND score <= 5), -- Solo pueden ser numeros enteros
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id, id_device),
    UNIQUE(name_service)
);

Create Table control(
    id Serial,
    name varchar(40) NOT NULL,
    active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    UNIQUE(name)
);
