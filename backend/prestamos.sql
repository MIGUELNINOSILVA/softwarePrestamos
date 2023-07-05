CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(255),
    FechaRegistro DATE
);

CREATE TABLE Prestamos (
    IDPrestamo INT PRIMARY KEY,
    IDCliente INT,
    Monto DECIMAL(10, 2),
    TasaInteres DECIMAL(5, 2),
    PlazoMeses INT,
    FechaInicio DATE,
    Estado VARCHAR(50),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente)
);

CREATE TABLE Pagos (
    IDPago INT PRIMARY KEY,
    IDPrestamo INT,
    FechaPago DATE,
    MontoPagado DECIMAL(10, 2),
    FOREIGN KEY (IDPrestamo) REFERENCES Prestamos(IDPrestamo)
);

CREATE TABLE Cuotas (
    IDCuota INT PRIMARY KEY,
    IDPrestamo INT,
    NumeroCuota INT,
    FechaVencimiento DATE,
    MontoCuota DECIMAL(10, 2),
    Estado VARCHAR(50),
    FOREIGN KEY (IDPrestamo) REFERENCES Prestamos(IDPrestamo)
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


INSERT INTO Pagos (IDPago, IDPrestamo, FechaPago, MontoPagado)
VALUES (1, 1, '2023-02-01', 500.00);

INSERT INTO Pagos (IDPago, IDPrestamo, FechaPago, MontoPagado)
VALUES (2, 1, '2023-03-01', 500.00);

INSERT INTO Pagos (IDPago, IDPrestamo, FechaPago, MontoPagado)
VALUES (3, 2, '2023-03-15', 1000.00);

INSERT INTO Pagos (IDPago, IDPrestamo, FechaPago, MontoPagado)
VALUES (4, 1, '2023-04-01', 500.00);


INSERT INTO Cuotas (IDCuota, IDPrestamo, NumeroCuota, FechaVencimiento, MontoCuota, Estado)
VALUES (1, 1, 1, '2023-02-01', 1000.00, 'Pagada');

INSERT INTO Cuotas (IDCuota, IDPrestamo, NumeroCuota, FechaVencimiento, MontoCuota, Estado)
VALUES (2, 1, 2, '2023-03-01', 1000.00, 'Pendiente');

INSERT INTO Cuotas (IDCuota, IDPrestamo, NumeroCuota, FechaVencimiento, MontoCuota, Estado)
VALUES (3, 2, 1, '2023-02-15', 833.33, 'Pagada');

INSERT INTO Cuotas (IDCuota, IDPrestamo, NumeroCuota, FechaVencimiento, MontoCuota, Estado)
VALUES (4, 2, 2, '2023-03-15', 833.33, 'Pagada');
