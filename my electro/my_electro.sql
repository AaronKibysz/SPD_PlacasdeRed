create database my_electro;
use my_electro;

create table TipoComponente(
    ComponenteID int auto_increment primary key;
    Nombre varchar(50) not null;
)

create table Dispositivos(
    DispositivoID int auto_increment primary key;
    Descripcion varchar(50) not null;
    Precio decimal(10, 2);
    Stock int;
    ComponenteID int;
    foreing key (ComponenteID) references TipoComponente(ComponenteID);
)

create table Clientes(
    ClientesID int auto_increment primary key;
    Nombre varchar(20);
    Apellido varchar(20); 
    Direccion varchar(100);
    NumeroTelefono int;
)
    
create table Proveedores(
    ProveedoresID int auto_increment primary key;
    NombreProveedor varchar(50);
    DireccionProveedor varchar(100);
    TelefonoProveedor int;
    EsNacional tinyint(1);
)

create table Compra(
    CompraID int auto_increment primary key;
    ProveedoresID int;
    DispositivoID int;
    foreing key (ProveedoresID) references Proveedores(ProveedoresID);
    foreing key (DispositivoID) references Dispositivo(DispositivoID);
)

create table Venta(
    VentaID int auto_increment primary key;
    ClientesID int;
    DispositivoID int;
    foreing key (ClientesID) references Clientes(ClientesID);
    foreing key (DispositivoID) references Dispositivo(DispositivoID);
)