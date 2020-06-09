import colores.*
import otrosRodados.*
import trafic.*

class Pedido {
	const property distancia
	var property tiempoMax
	var property cantPasajeros
	const property coloresIncompa = #{}
	
	method velRequerida()= distancia / tiempoMax
	method puedeSatisfacerPedido(auto)=
		(auto.velocidadMax()+10) > self.velRequerida() and
		auto.capacidad()>= cantPasajeros and
		not coloresIncompa.contains( auto.color() )
	method addColor(color){ coloresIncompa.add(color)}
	method removeColor(color){ coloresIncompa.remove(color)}
	method acelerar()= (tiempoMax = tiempoMax - 1)
	method relajar()= (tiempoMax = tiempoMax + 1)
	method puedeSatisfacerloUnoDe(listaDeAutos)=
		listaDeAutos.any({ auto => self.puedeSatisfacerPedido(auto)})
	method esColorIncompatible(color)=
		coloresIncompa.contains(color)
	
	
}
