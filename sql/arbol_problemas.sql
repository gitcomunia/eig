CREATE TABLE IF NOT EXISTS areas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS problemas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  area_id INT NOT NULL,
  descripcion TEXT NOT NULL,
  escala ENUM('baja', 'media', 'alta') DEFAULT 'media',
  desarrollo ENUM('bajo', 'medio', 'alto') DEFAULT 'medio',
  FOREIGN KEY (area_id) REFERENCES areas(id)
);
CREATE TABLE IF NOT EXISTS sugerencias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  problema_id INT NOT NULL,
  descripcion TEXT NOT NULL,
  FOREIGN KEY (problema_id) REFERENCES problemas(id)
);
INSERT INTO areas (nombre) VALUES
('Atención ciudadana'),
('Recaudación y finanzas'),
('Servicios públicos'),
('Obras y planificación urbana'),
('Salud'),
('Ambiente'),
('Seguridad'),
('Gobierno digital y modernización');
INSERT INTO problemas (area_id, descripcion, escala, desarrollo) VALUES
(1, 'Canales no integrados de atención al ciudadano', 'media', 'bajo'),
(1, 'Falta de trazabilidad de reclamos', 'media', 'medio'),
(2, 'Mora elevada en impuestos municipales', 'alta', 'bajo'),
(2, 'Difícil actualización de padrones de contribuyentes', 'alta', 'medio'),
(3, 'Asignación ineficiente de recursos para servicios', 'alta', 'bajo'),
(3, 'Falta de seguimiento de pedidos de servicio', 'media', 'medio');
INSERT INTO sugerencias (problema_id, descripcion) VALUES
(1, 'Implementar un canal omnicanal unificado (web, app, presencial)'),
(1, 'Integrar WhatsApp con sistema de gestión de reclamos'),
(2, 'Incorporar sistema digital con tickets trazables'),
(3, 'Campañas de pago segmentadas y digitales'),
(4, 'Actualización automática con registros nacionales (AFIP, RENAPER)'),
(5, 'Mapa de calor de demanda por zona y tipo de servicio'),
(6, 'Tablero de seguimiento y SLA para pedidos ciudadanos');