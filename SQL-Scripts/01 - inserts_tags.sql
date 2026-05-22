-- 3. INSERSIONES EN LA TABLA tags
INSERT INTO tags (id, nombre, description, color_hex) VALUES
(1, 'FORTALEZA', 'Edificaciones militares, murallas y puntos de defensa histórica.', '#E67E22'),
(2, 'RELIGIOSO', 'Iglesias, conventos, santuarios y espacios de culto o espiritualidad.', '#9B59B6'),
(3, 'CIVIL', 'Edificios públicos, casas consistoriales y arquitectura civil histórica.', '#3498DB'),
(4, 'ORNAMENTAL', 'Elementos decorativos como fuentes, estatuas y mobiliario artístico.', '#1ABC9C'),
(5, 'NATURAL', 'Espacios verdes, parques naturales y entornos de valor ecológico.', '#27AE60');


-- Nuevos Tags para rutas

INSERT INTO tags (id, nombre, description, color_hex) VALUES
(6, 'MIXTA', 'Recorridos variados que combinan monumentos de distinta naturaleza.', '#F1C40F'),   -- Amarillo: Ideal para rutas que mezclan civil y religioso
(7, 'AVENTURA', 'Rutas de alta dificultad o que requieren mayor esfuerzo físico.', '#E74C3C'),         -- Rojo: Rutas con dificultad alta o relieve natural
(8, 'PATRIMONIO', 'Itinerarios que destacan hitos de gran relevancia histórica y cultural.', '#2980B9'), -- Azul Oscuro: Rutas de alto valor monumental variado
(9, 'FAMILIAR', 'Recorridos sencillos y amenos, ideales para todas las edades.', '#FF85A2'),         -- Rosa: Rutas sencillas y aptas para todos los públicos
(10, 'URBANO', 'Paseos integrados en el núcleo de la ciudad que conectan puntos cercanos.', '#95A5A6'); -- Gris: Rutas a pie que conectan varios puntos de la ciudad


Insert Into localidades(id, name, provincia, codigo_postal) values
(1, ' Martos', 'Jaen', '23600'),
(2, 'Torredonjimeno', 'Jaen', '23650'),
(3, 'Alcaudete', 'Jaen', '23680');