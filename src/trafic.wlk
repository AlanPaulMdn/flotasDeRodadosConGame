
import colores.*

object trafic {
	var property interior
	var property motor
	
	method capacidad()= interior.capacidad()
	method velocidadMax()= motor.velocidadMax()
	method color()= blanco
	method peso()= 4000 + motor.peso()
	
}

object popular{
	method capacidad()=12
	method peso()=1000
}

object comodo{
	method capacidad()=5
	method peso()=700
}

object pulenta {
	method peso()= 800
	method velocidadMax()=130
	
}
object bataton {
	method peso()=500
	method velocidadMax()=80
}