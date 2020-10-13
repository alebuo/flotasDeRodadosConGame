import otrosRodados.*
import colores.*
import dependencias.*

class Pedidos {
	var property distancia=0
	var property tiempoMaximo=0
	var property cantidadDePasajeros=0
	var property coloresIncompatibles=[]
	
	method velocidadRequerida(){return distancia/tiempoMaximo}
	method autoPuedeSatisfacerPedido(auto){
		return self.velocidadRequerida()+10 <= auto.velocidadMaxima() && cantidadDePasajeros<=auto.capacidad() && not coloresIncompatibles.any({a => a == auto.color() })}
	method acelerar(){tiempoMaximo=tiempoMaximo-1}
	method relajar(){tiempoMaximo=tiempoMaximo+1}
}
