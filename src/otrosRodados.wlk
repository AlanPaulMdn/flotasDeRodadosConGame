
import colores.*

class Corsa {
	var property color
	method capacidad()= 4
	method velocidadMax()=150
	method peso()=1300
}

class Kwid {
	var property tanqueExtra
	
	method capacidad()= if(tanqueExtra){3}else{4}
	method velocidadMax()= if(tanqueExtra){120}else{110}
	method color()= azul
	method peso()=if(tanqueExtra){1350}else{1200}
	
}

class AutoEspecial {
	var property color
	var property capacidad
	var property velocidadMax
	var property peso
}