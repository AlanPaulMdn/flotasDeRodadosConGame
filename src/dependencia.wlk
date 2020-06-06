import trafic.*
import otrosRodados.*
import colores.*

class Dependencia {
	const flota= []
	var property cantEmpleades
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	method pesoTotalFlota()= flota.sum({auto => auto.peso() })
	method estaBienEquipada()= flota.size()>=3 and flota.all({auto => auto.velocidadMax()>=100 })
	method capacidadTotalEnColor(color)=
		flota.filter({auto=> auto.color() == color}).sum({auto => auto.capacidad()})
	method colorDelRodadoMasRapido()= flota.max({auto => auto.velocidadMax()}).color()
	method capacidadFaltante()= cantEmpleades - flota.sum({auto => auto.capacidad()}).max(0)
	method esGrande()= cantEmpleades>=40 and flota.size()>=5
}
