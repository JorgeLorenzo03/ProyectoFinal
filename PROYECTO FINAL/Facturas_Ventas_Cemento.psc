Algoritmo Facturas_Ventas_Cemento
	//Declaracion De Variables
	Definir codigo, nombre, apellido, GU, HE, CB Como Cadena;
	Definir PR Como Caracter;
	Definir  PGU, PHE, PCB, CT, CTD, SUM, CANGU, CANHE, CANCB, RGU, RHE, RCB, DES Como Entero;
	
	//Asignacion De Variables
	codigo <-'FM';	
	nombre <-'Fredy';
	apellido <-'Moran';
	GU <-'Cemento Uso General';
	HE <-'Cemento Estructural';
	CB <-'Cemento Blanco';
	PGU <-400;
	PHE <-430;
	PCB <-1000;
	
	Escribir "Favor Ingresar Nombre de cliente: "
	Leer nombre;
	
	Escribir "Favor Ingresar apellido de cliente: "
	Leer apellido;
	
	Escribir "Favor Ingresar Codigo de cliente: "
	Leer codigo;
	
	Repetir
		
		
Escribir "Favor Ingresar Cantidad de fundas GU: "	;
leer CANGU;
RGU <- PGU * CANGU;
	
	Escribir "Favor Ingresar Cantidad de fundas HE: "	;
	leer CANHE;
	RHE <- PHE * CANHE;

	Escribir "Favor Ingresar Cantidad de fundas CB: "	;
	leer CANCB;
	RCB <- PCB * CANCB;
	
	Escribir 'El TOTAL PARA LAS FUNDAS DE TIPO GU ES' ' ',RGU;
	Escribir 'EL TOTAL PARA LAS FUNDAS DE TIPO HE ES' ' ',RHE;
	Escribir 'EL TOTAL PARA LAS FUNDAS DE TIPO CB ES'  ' ',RCB;
	
	Escribir "Desea Continuar s/n?";
	Leer PR;
	Hasta Que PR="n";
	
	SUM <- RGU+RHE+RCB;
	Si (SUM >= 50000) Entonces
		DES <- (SUM * 0.05)
		Escribir  'Usted aplica para el descuento'; 
		CTD <- (SUM - DES)
		Escribir 'Factura para el cliente codigo', ' ', codigo ',nombre y apellido ', nombre, ' ', apellido;
		Escribir 'El Costo Total De Su Compra Es ',  CTD;
		
	SiNo
		CT <- SUM;
		Escribir 'Usted no aplica para el descuento';
		Escribir 'Factura para el cliente codigo ', codigo ',nombre y apellido ', nombre, ' ', apellido;
		Escribir 'El Costo Total De Su Compra Es ',  CT;
	FinSi
FinAlgoritmo
