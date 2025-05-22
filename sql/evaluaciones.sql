CREATE TABLE IF NOT EXISTS evaluaciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  area VARCHAR(100),
  problemas JSON,
  expectativas JSON,
  personal_area INT,
  nivel_digitalizacion VARCHAR(20),
  nombre_contacto VARCHAR(100),
  cargo_contacto VARCHAR(100),
  email_contacto VARCHAR(100),
  telefono_contacto VARCHAR(50),
  reunion_interes VARCHAR(20),
  fecha DATETIME NOT NULL
);