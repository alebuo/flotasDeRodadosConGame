import otrosRodados.*
import colores.*
import trafic.*
import pedidos.*

class Dependencia {
	var property flotaDeRodados =[] 
	var property cantEmpleados= 0
	var property registroDePedidos=[]
	
	method agregarAFlota(rodado){flotaDeRodados.add(rodado)	}
	method quitarDeFlota(rodado){flotaDeRodados.remove(rodado)}
	method pesoTotalFlota(){return flotaDeRodados.sum({a => a.peso()})}
	method estaBienEquipada(){return flotaDeRodados.count({a => a.velocidadMaxima()>100})>=3}
	method capacidadTotalEnColor(color){return flotaDeRodados.filter({a=> a.color() == color}).sum({b=>b.capacidad()})}
	method colorDelRodadoMasRapido(){return flotaDeRodados.max({a=> a.velocidadMaxima()}).color()}
	method capacidadFaltante(){	return cantEmpleados - flotaDeRodados.sum({a => a.capacidad()})	}
	method esGrande(){return cantEmpleados>=40 and flotaDeRodados.size()>=5	}
	method agregarPedido(codigo){registroDePedidos.add(codigo)}
	method quitarPedido(codigo){registroDePedidos.remove(codigo)}
	method totalPasajerosEnPedidos(){return registroDePedidos.sum({a => a.cantidadDePasajeros()})}
	method pedidosSinPosibilidadDeSatisfacer(){	
	//return registroDePedidos.filter({a=>a.autoPuedeSatisfacerPedido(auto)})
	}
	method esteColorEsIncompatibleEnTodosLosPedidos(color){
		return registroDePedidos.all({a=>a.coloresIncompatibles()== color})}	
	method relajarTodosLosPedidos(){registroDePedidos.map({a=>a.relajar()})}
	}
