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
    ('Pci-e Wifi Tp-link 1 Antena Wn781nd', 13999, 8, 1),
    ('Wifi Adaptador Usb NOGA 600mbs', 19999, 22, 1),
    ('Nvidia MSI Ventus GeForce RTX 3070 8gb', 499900, 7, 2),
    ('AMD Afox Radeon RX 500 Series RX 580 8gb', 229999, 8, 2),
    ('Philips Led 24 Pulgadas 241v8l/77 Hdmi Vga', 92999, 23, 3)
    ('Samsung F24t35 Led 24 Azul', 106980, 25, 3)
    ('Western Digital WD10EZEX 1TB HDD plateado', 52831, 11, 4)
    ('Kingston Ssd 1tb M.2 Snv2s/1000g Nvme Pcie 4.0', 60700, 15, 4)
    ('Redragon K552 Kumara 2 Mecanico', 36799, 18, 5)
    ('Noganet 78005', 4490, 55, 5)
    ('Behringer U-Phoria UM2', 95744, 6, 6)
    ('Pci Express Audio (nspcieau6) Nisuta', 40836, 3, 6)
    ('Brother Hl-1 Series Hl-1212w Wifi', 172732.56, 2, 7)
    ('Hp Multifuncion 2375 Deskjet Ink Advantage', 74499, 3, 7)
    ('Redragon Saturn G807', 17849, 15, 8)
    ('Dualshock 4 Ps4 Jet Black', 33000, 8, 8)
    ('Microsoft Mobile Souris Wireless Mobile 1850', 7959, 28, 9)
    ('Logitech G Series Lightsync G203', 30692, 30, 9)
    ('Logitech Brio 4K 90FPS', 190000, 3, 10)
    ('Redragon Hitman GW800', 35.999, 14, 10);


