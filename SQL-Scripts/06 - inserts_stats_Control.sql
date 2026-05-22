-- Simulamos las descargas de los primeros días de mayo
INSERT INTO stats (name_service, n_downloads, regis_date) VALUES
('Google Play', 120, '2026-05-01'),
('Apple Store', 85, '2026-05-01'),
('APK Web', 30, '2026-05-01'),
('Google Play', 150, '2026-05-02'),
('Apple Store', 90, '2026-05-02'),
('APK Web', 25, '2026-05-02'),
('Google Play', 210, '2026-05-03'),
('Apple Store', 130, '2026-05-03'),
('APK Web', 45, '2026-05-03'),
('Google Play', 95, '2026-05-04'),
('Apple Store', 70, '2026-05-04'),
('APK Web', 15, '2026-05-04');

-- Simulamos identificadores de dispositivos (pueden ser UUIDs o cadenas de texto que genere el móvil)
INSERT INTO app_reviews (id_device, name_service, score) VALUES
('dev_android_001', 'Google Play', 5),
('dev_android_002', 'Google Play', 4),
('dev_android_003', 'Google Play', 1), -- Un usuario insatisfecho
('dev_android_004', 'Google Play', 5),
('dev_android_005', 'Google Play', 3),
('dev_ios_001', 'Apple Store', 5),
('dev_ios_002', 'Apple Store', 4),
('dev_ios_003', 'Apple Store', 5),
('dev_ios_004', 'Apple Store', 2),
('dev_web_001', 'APK Web', 4),
('dev_web_002', 'APK Web', 5),
('dev_android_001', 'APK Web', 5);

INSERT INTO control(name) VALUES 
('monuments'),
('routes'),
('IA_Chatbox'),
('News');
