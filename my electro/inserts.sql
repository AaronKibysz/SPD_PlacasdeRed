select * from my_electro;
INSERT INTO TipoComponente(Nombre)
VALUES
    ('Placa de Red'),
    ('Tarjeta Grafica'),
    ('Monitor'),
    ('Disco de Almacenamiento'),
    ('Teclado'),
    ('Placa de Sonido'),
    ('Impresora'),
    ('Joystick'),
    ('Mouse'),
    ('Web Cam');

INSERT INTO Dispositivos(Descripcion, Precio, Stock, ComponenteID)
VALUES
    ('Pci-e Wifi Tp-link 1 Antena Wn781nd', 13.999, 95, 1),
    ('Wifi Adaptador Usb NOGA 600mbs', 19.999, 62, 1),
    ('Nvidia MSI Ventus GeForce RTX 3070 8gb', 499.900, 20, 2),
    
