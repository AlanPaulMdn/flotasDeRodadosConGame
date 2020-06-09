import colores.*
import wollok.game.*
import objetosEnElJuego.*
class Corsa {
	var property color 
	 
	var property position = game.origin()
	const property posiciones = #{ game.origin() }
	var property image 
	method image()= color.image()
	
	method capacidad()= 4
	method velocidadMax()=150
	method peso()=1300
	
	method pasoPor(pos)= posiciones.contains(pos)
	method pasoPorFila(num)= posiciones.map({ pos=> pos.x()}).contains(num)
	method recorrioFilas(listaNum)= listaNum.all({ num => self.pasoPorFila(num) })
	
	method savePosition() {	posiciones.add(self.position()) }
	
	
	//PONER LOS LIMITES DEL TABLERO
	method moveRight(){ self.position(self.position().right(1)) self.savePosition() }
	method moveLeft(){ self.position(self.position().left(1)) self.savePosition()}
	method moveUp(){ self.position(self.position().up(1)) self.savePosition()}
	method moveDown(){ self.position(self.position().down(1)) self.savePosition()}
	method moveTo(unaPosicion){ self.position(unaPosicion) self.savePosition()}
}

class Kwid {
	var property tanqueExtra
	const pesoTanque = 150
	const pesoAuto = 1200
	method capacidad()= if(tanqueExtra){3}else{4}
	method velocidadMax()= if(tanqueExtra){120}else{110}
	method color()= azul
	method peso()=if(tanqueExtra){ pesoAuto + pesoTanque }else{pesoAuto}
	
}

class AutoEspecial {
	var property color
	var property capacidad
	var property velocidadMax
	var property peso
}



