-- Inserts tabla rutes

INSERT INTO rutes (id, name, description, difficult, tag_id, localidad_id) VALUES
(
    '111e8400-e29b-41d4-a716-446655440001', 
    'Paseo Histórico Familiar', 
    'Ruta suave por el centro ideal para hacer con niños y conocer lo básico.', 
    0, 
    9,
    1
),
(
    '111e8400-e29b-41d4-a716-446655440002', 
    'Senda del Patrimonio Marteño', 
    'Recorrido completo por los principales monumentos civiles y religiosos.', 
    1, 
    8,
    1
),
(
    '111e8400-e29b-41d4-a716-446655440003', 
    'Desafío de la Peña', 
    'Ruta de senderismo exigente que conecta el casco antiguo con la zona alta.', 
    2, 
    7,
    1 
);

-- Insert de monumentos en rutas

-- Monumentos para 'Paseo Histórico Familiar'
INSERT INTO rutes_monumentos (id_rutes, id_monumento) VALUES
('111e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002'), -- Fuente Villa
('111e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-44665544000f'); -- Casa Cultura

-- Monumentos para 'Senda del Patrimonio Marteño'
INSERT INTO rutes_monumentos (id_rutes, id_monumento) VALUES
('111e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440004'), -- Parroquia Santa Marta
('111e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440005'), -- Antigua Carcel
('111e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440006'); -- Círculo Nueva Amistad

-- Monumentos para 'Desafío de la Peña'
INSERT INTO rutes_monumentos (id_rutes, id_monumento) VALUES
('111e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440008'), -- Fortaleza Baja
('111e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-44665544000d'); -- Paseo Calvario


INSERT INTO score (id_device, id_rutes, score) VALUES
('1', '111e8400-e29b-41d4-a716-446655440001', 4.5),
('2', '111e8400-e29b-41d4-a716-446655440001', 5.0),
('3', '111e8400-e29b-41d4-a716-446655440002', 4.8),
('4', '111e8400-e29b-41d4-a716-446655440003', 3.5);

