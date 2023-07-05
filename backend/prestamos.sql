CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(255),
    FechaRegistro DATE
);

CREATE TABLE Prestamos (
    IDPrestamo INT PRIMARY KEY AUTO_INCREMENT,
    IDCliente INT,
    Monto DECIMAL(10, 2),
    TasaInteres DECIMAL(5, 2),
    PlazoMeses INT,
    FechaInicio DATE,
    Estado VARCHAR(50),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente)
);

CREATE TABLE Cuotas (
  IDCuota INT PRIMARY KEY,
  IDPrestamo INT,
  NumeroCuota INT,
  FechaVencimiento DATE,
  MontoCuota DECIMAL(10, 2),
  Estado VARCHAR(20),
  FOREIGN KEY (IDPrestamo) REFERENCES Prestamos(IDPrestamo)
);

CREATE TABLE Pagos (
  IDPago INT PRIMARY KEY AUTO_INCREMENT,
  IDCuota INT,
  FechaPago DATE,
  MontoPagado DECIMAL(10, 2),
  FOREIGN KEY (IDCuota) REFERENCES Cuotas(IDCuota)
);





INSERT INTO Clientes (IDCliente, Nombre, Apellido, Direccion, Telefono, CorreoElectronico, FechaRegistro)
VALUES (1, 'Juan', 'Pérez', 'Calle A', '12345678', 'juan@example.com', '2023-01-05');

INSERT INTO Clientes (IDCliente, Nombre, Apellido, Direccion, Telefono, CorreoElectronico, FechaRegistro)
VALUES (2, 'María', 'López', 'Calle B', '98765432', 'maria@example.com', '2023-02-10');

INSERT INTO Clientes (IDCliente, Nombre, Apellido, Direccion, Telefono, CorreoElectronico, FechaRegistro)
VALUES (3, 'Carlos', 'Rodríguez', 'Calle C', '45678901', 'carlos@example.com', '2023-03-15');


INSERT INTO Prestamos (IDPrestamo, IDCliente, Monto, TasaInteres, PlazoMeses, FechaInicio, Estado)
VALUES (1, 1, 10000.00, 5.00, 12, '2023-01-01', 'Pendiente');

INSERT INTO Prestamos (IDPrestamo, IDCliente, Monto, TasaInteres, PlazoMeses, FechaInicio, Estado)
VALUES (2, 2, 5000.00, 4.50, 6, '2023-02-15', 'Aprobado');

INSERT INTO Prestamos (IDPrestamo, IDCliente, Monto, TasaInteres, PlazoMeses, FechaInicio, Estado)
VALUES (3, 1, 15000.00, 6.00, 24, '2023-03-10', 'Pagado');


-- Insertar las cuotas del préstamo anterior
INSERT INTO Cuotas (IDCuota, IDPrestamo, NumeroCuota, FechaVencimiento, MontoCuota, Estado)
VALUES (1, 1, 1, '2023-02-01', 100.00, 'Pendiente');

INSERT INTO Cuotas (IDCuota, IDPrestamo, NumeroCuota, FechaVencimiento, MontoCuota, Estado)
VALUES (2, 1, 2, '2023-03-01', 100.00, 'Pendiente');

-- Insertar un pago para una cuota
INSERT INTO Pagos (IDPago, IDCuota, FechaPago, MontoPagado)
VALUES (1, 1, '2023-02-15', 100.00);

